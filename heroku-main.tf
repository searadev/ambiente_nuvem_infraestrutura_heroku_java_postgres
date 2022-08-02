# Create a new Heroku app
resource "heroku_app" "searadev" {
  name   = "searadev"
  region = "us"
}

# Create a database, and configure the app to use it
resource "heroku_addon" "database" {
  app_id = heroku_app.searadev.id
  plan   = "heroku-postgresql:hobby-dev"
}