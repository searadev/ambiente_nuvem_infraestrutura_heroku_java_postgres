# Configura o Provider Heroku com o Projeto
terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "5.1.1"
    }
  }
}