require 'dotenv'# Appelle la gem Dotenv
require 'twitter' # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV
 # ligne très importante qui appelle la gem.
 def login_twitter
 Dotenv.load('.env')# n'oublie pas les lignes pour Dotenv ici…
 # quelques lignes qui appellent les clés d'API de ton fichier .env
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
return  client.update('Mon second test avec chris!!!')
end
login_twitter
 # ligne qui permet de tweeter sur ton compte

