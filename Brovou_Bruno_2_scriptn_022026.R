# ============================================================
# Packages
# ============================================================

library(readr)             # readr : lecture rapide et propre des fichiers CSV
library(dplyr)             # dplyr : manipulation de données (inclus dans tidyverse mais parfois chargé séparément)


# ============================================================
# Test "production" 
#    - attend les mêmes colonnes X
#    - produit un fichier predictions.csv
# ============================================================

# Recharge ton pipeline final (prétraitement + modèle)
final_pipeline <- readRDS("models/final_pipeline.rds")

# récupère la liste des colonnes attendues par le modèle (les 6 variables)
x_cols <- final_pipeline$features

# Lecture du fichier CSV contenant les nouveaux billets à analyser et évite d’afficher les types de colonnes
prod_raw <- read_delim("data/raw/billets_production.csv", show_col_types = FALSE)

# Vérification colonnes requises
missing <- setdiff(x_cols, names(prod_raw))
if (length(missing) > 0) stop(paste("Colonnes manquantes :", paste(missing, collapse=", ")))

# Préparer X (mêmes colonnes, même ordre)
prod_X <- prod_raw %>% select(all_of(x_cols))

# Renvoie VRAI ou FAUX pour chaque billet.
# Renvoie la probabilité d’être FAUX.
out <- prod_raw %>%
  mutate(
    prediction = predict(final_pipeline$model, newdata = prod_X),
    proba_FAUX = tryCatch(
      predict(final_pipeline$model, newdata = prod_X, type="prob")[,"FAUX"],
      error = function(e) NA_real_
    )
  )

# Sauvegarde
write_csv(out, "models/predictions.csv")

# Affichage
head(out)
