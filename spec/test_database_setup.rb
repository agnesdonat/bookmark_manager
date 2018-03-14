require 'pg'
p "Setting up test database..."

DatabaseConnection.setup('bookmark_manager_test')

DatabaseConnection.query("TRUNCATE links;")

DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.zoobudapest.com/en');")
DatabaseConnection.query("INSERT INTO links (url) VALUES('http://www.shakespearesglobe.com/');")
