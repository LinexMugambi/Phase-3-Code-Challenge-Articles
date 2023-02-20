class Magazine
  @@all = []
  attr_accessor :name, :category, :contributing_authors, :article_titles
  def initialize(name, category)
    @name = name
    @category = category
    @contributing_authors = []
    @article_titles = []
    @@all << self
  end
  def self.all
    @@all
  end
  def self.all_authors
    all_authors = []
    all.each do |magazine|
      magazine.contributing_authors.each do |author|
        all_authors << author
      end
    end
    all_authors.uniq
  end
  def add_article(author, title)
    contributing_authors << author
    article_titles << title
  end
end