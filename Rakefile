require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  DatabaseConnection.setup('bookmark_manager_test')

  DatabaseConnection.query("TRUNCATE links;")

  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.zoobudapest.com/en');")
  DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.shakespearesglobe.com/');")
end

task :setup do
  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")
  end
end
