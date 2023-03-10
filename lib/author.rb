class Author
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def articles
    Article.all.select {|article| article.author == self}
  end
  def magazines
    articles.map {|article| article.magazine}
  end
  def magazine_titles
    magazines.map {|magazine| magazine.name}
  end
end