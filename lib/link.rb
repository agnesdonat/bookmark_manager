require_relative './database_connection.rb'
require 'uri'
class Link
  attr_reader :id , :url
  def initialize(id, url)
    @id = id
    @url = url
  end
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links;")
    result.map { |element| Link.new(element['id'], element['url'])}
  end

  def self.add(url)
      DatabaseConnection.query("INSERT INTO links (url) VALUES ('#{url}');")
  end

  def self.good_link?(url)
    (url =~ /\A#{URI::regexp(['http', 'https'])}\z/) ? true : false
  end


end
