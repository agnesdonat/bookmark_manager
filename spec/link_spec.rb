require 'link'

describe Link do
  describe '#all' do
    it 'displays all links' do
      links = Link.all

      expect(links).to include("http://www.makersacademy.com")
      expect(links).to include("http://www.zoobudapest.com/en")
      expect(links).to include("http://www.shakespearesglobe.com/")
    end
  end

  describe '#add' do
    it 'adds a new link to bmm' do
      Link.add('https://deveiate.org/code/pg/')
      expect(Link.all).to include("https://deveiate.org/code/pg/")
    end
  end
end
