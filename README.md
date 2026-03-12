# Détection de faux billets (R/Python — ML)

[🇬🇧 English version](README_EN.md)

## Contexte
L’objectif est de mettre en place un modèle de **classification** capable de distinguer des billets **authentiques** et **contrefaits** à partir de caractéristiques mesurées (variables numériques).

## Objectifs
- **Préparer** les données (nettoyage, contrôle qualité, standardisation si nécessaire)
- **Entraîner** et **comparer** plusieurs modèles de classification
- **Évaluer** les performances (métriques + matrice de confusion)
- **Recommander** un usage opérationnel (seuil, risques, limites)

## Données
- Données tabulaires : variables numériques décrivant un billet (mesures)
- Cible : **Authentique / Faux**
- Confidentialité : aucun contenu sensible (dataset d’exercice)

## Méthode (approche projet)
1. **Cadrage**
   - Problématique : réduire le risque de laisser passer un faux billet
   - Critère métier : privilégier le **rappel (recall)** sur la classe “faux” si le risque est prioritaire
2. **Préparation des données**
   - Vérification des valeurs manquantes et des distributions
   - Encodage/formatage si besoin
   - Séparation Train/Test, éventuellement normalisation/standardisation
3. **Modélisation**
   - Baselines + modèles comparés (selon l’implémentation) : régression logistique, k-NN, Random Forest, etc.
4. **Évaluation**
   - Matrice de confusion
   - Précision, rappel, F1-score
   - ROC-AUC (si applicable)
5. **Interprétation & recommandation**
   - Choix du modèle selon l’objectif (ex. minimiser les faux négatifs)
   - Proposition de seuil et recommandations d’intégration

## Résultats (à compléter avec tes chiffres)
- Modèle retenu : **[Nom du modèle]**
- Performance (Test) :
  - Accuracy : **[x]**
  - Precision (classe “faux”) : **[x]**
  - Recall (classe “faux”) : **[x]**
  - F1-score : **[x]**
  - ROC-AUC : **[x]**
- Recommandation : **[ex. seuil + approche de contrôle]**

## Livrables
- Rapport : `docs/`
- Notebook / scripts : `src/`
- Visuels (matrice de confusion, ROC, etc.) : `assets/`

## Comment exécuter (optionnel)
- R : ouvrir le script/notebook dans RStudio et exécuter les cellules
- Python : ouvrir le notebook Jupyter et lancer l’exécution (requirements si besoin)

## Limites & points de vigilance
- Sensibilité au **seuil** de décision (trade-off précision vs rappel)
- Risque de surapprentissage si dataset limité
- Importance de tester sur un jeu de données représentatif avant déploiement

## Contact
Bruno Brovou — Data Analyst confirmé  
Email : j.b.brovou@gmail.com  
Portfolio : https://brovou.github.io

# Counterfeit banknote detection (R/Python — ML)
[🇫🇷 Version française](README.md)

## Context
The goal is to build a **classification model** to distinguish **genuine** vs **counterfeit** banknotes using measured numeric features (tabular data).

## Objectives
- **Prepare** the data (cleaning, quality checks, standardization if needed)
- **Train** and **compare** classification models
- **Evaluate** performance (metrics + confusion matrix)
- **Recommend** an operational usage (threshold, risks, limitations)

## Data
- Tabular dataset: numeric features describing a banknote
- Target: **Genuine / Counterfeit**
- Confidentiality: training dataset (no sensitive data)

## Method (project approach)
1. **Scoping**
   - Business problem: reduce the risk of accepting counterfeit banknotes
   - Business metric: prioritize **recall** on the “counterfeit” class if risk is critical
2. **Data preparation**
   - Check missing values and distributions
   - Formatting/encoding if required
   - Train/Test split, optional normalization/standardization
3. **Modeling**
   - Baselines + compared models (depending on implementation): logistic regression, k-NN, Random Forest, etc.
4. **Evaluation**
   - Confusion matrix
   - Accuracy, precision, recall, F1-score
   - ROC-AUC (if applicable)
5. **Interpretation & recommendation**
   - Select the model based on the objective (e.g., minimize false negatives)
   - Propose a decision threshold and integration guidelines

## Results (fill in with your numbers)
- Selected model: **[Model name]**
- Test performance:
  - Accuracy: **[x]**
  - Precision (counterfeit): **[x]**
  - Recall (counterfeit): **[x]**
  - F1-score: **[x]**
  - ROC-AUC: **[x]**
- Recommendation: **[e.g., threshold + review process]**

## Deliverables
- Report: `docs/`
- Notebook / scripts: `src/`
- Visuals (confusion matrix, ROC, etc.): `assets/`

## How to run (optional)
- R: open in RStudio and run the script/notebook cells
- Python: open the notebook in Jupyter and run (add requirements if needed)

## Limitations & considerations
- Strong sensitivity to the **decision threshold** (precision vs recall trade-off)
- Overfitting risk if the dataset is small
- Validate on representative data before production deployment

## Contact
Bruno Brovou — Senior Data Analyst  
Email: j.b.brovou@gmail.com  
Portfolio: https://brovou.github.io
