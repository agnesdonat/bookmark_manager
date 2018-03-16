require 'link'

describe Link do
  describe '.all' do
    it 'displays all links' do
      links = Link.all.map! { |element| element.url }
      expect(links).to include("http://www.makersacademy.com")
      expect(links).to include("http://www.zoobudapest.com/en")
      expect(links).to include("http://www.shakespearesglobe.com/")
    end
  end

  describe '.add' do
    it 'adds a new link to bookmark manager' do
      Link.add("https://deveiate.org/code/pg/")
      links = Link.all.map! { |element| element.url }
      expect(links).to include("https://deveiate.org/code/pg/")
    end
  end

  describe '.good_link?' do
    it 'returns true if valid link is given' do
      expect(Link.good_link?('http://test.com')).to eq(true)
    end

    it 'returns false if an invalid link is given' do
      expect(Link.good_link?('test')).to eq(false)
    end
  end
end
