require 'database_connection'

class Link
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links;")
    result.map { |link| link['url']}
  end

  def self.add(name)   
      DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{name}');")
  end

end
