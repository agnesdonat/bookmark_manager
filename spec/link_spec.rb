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
end
