require 'pg'
require './lib/database_connection.rb'

task default: ['setup','test_database_setup']

task :setup do
  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    begin
      connection.exec("CREATE DATABASE #{ database };")
      connection = PG.connect(dbname: database)
      p "Database #{database} created."
    rescue PG::Error => error
      puts error.message
    end

    begin
      connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")
      p "Tables on #{database} created."
    rescue PG::Error => e
      puts e.message
    end

  end
end

task :test_database_setup do
  #p "Cleaning database..."

  DatabaseConnection.setup('bookmark_manager_test')

  DatabaseConnection.query("TRUNCATE links;")

  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.zoobudapest.com/en');")
  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.shakespearesglobe.com/');")
end
