class Magazine

    attr_accessor :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
      end
      def self.all
        @@all
      end

         ##helper
      def magazine_articles
        Article.all.select{|article| article.magazine.name == self.name}
      end
      def contributors
        magazine_articles.collect{|article| article.author}.uniq
      end
      def self.find_by_name(name)
        find_magazines = self.all.select { |magazine| magazine.name == name}
        find_magazines.first
      end
end