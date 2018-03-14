require 'pg'
p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE links;")

connection.exec("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.zoobudapest.com/en');")
connection.exec("INSERT INTO links (url) VALUES('http://www.shakespearesglobe.com/');")
