require 'pg'
p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE links;")

connection.exec("INSERT INTO links VALUES(1, 'http://www.makersacademy.com');")
connection.exec("INSERT INTO links VALUES(2, 'http://www.zoobudapest.com/en');")
connection.exec("INSERT INTO links VALUES(3, 'http://www.shakespearesglobe.com/');")
