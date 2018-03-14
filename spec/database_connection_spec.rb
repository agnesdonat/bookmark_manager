require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'checks for database connection' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end

  describe '.query' do
    it 'execute SQL query to the database' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with("SELECT * FROM links;")
      DatabaseConnection.query("SELECT * FROM links;")
    end
  end
end
