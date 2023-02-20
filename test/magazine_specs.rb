require_relative '../config/environment.rb'
#TEST CODE HERE
puts "Welcome to the Magazine App!"
# create some authors, magazines, and articles for testing
author_1 = Author.new("Timothy")
author_2 = Author.new("James")
magazine_1 = Magazine.new("outlook1", "fashion")
magazine_2 = Magazine.new("forbes1", "money")
art1 = Article.new(author_2, magazine_1, "title_one")
art2 = Article.new(author_1, magazine_2, "title_two")
# print all authors
puts "Please enter 'a' to get all authors:"
user_input = gets.chomp
if user_input == "a"
  Author.all.each {|author| puts "author name: #{author.name}"}
end
# print all magazines
puts "All magazines:"
Magazine.all.each {|magazine| puts magazine.name}
# print all articles
puts "All articles:"
Article.all.each {|article| puts article.title}
# print all topics
puts "All topics:"
Magazine.all.each {|magazine| puts magazine.category}
# find a magazine by name
puts "Find a magazine by name:"
magazine_name = gets.chomp
Magazine.all.each do |magazine|
  if magazine.name == magazine_name
    puts "Magazine found: #{magazine.name}"
  end
end
# find contributing authors by magazine name
puts "Find contributing authors by magazine name:"
magazine_name = gets.chomp
Magazine.all.each do |magazine|
  if magazine.name == magazine_name
    puts "Contributing authors for #{magazine.name}: #{magazine.contributing_authors}"
  end
end
# find article titles by magazine name
puts "Find article titles by magazine name:"
magazine_name = gets.chomp
Magazine.all.each do |magazine|
  if magazine.name == magazine_name
    puts "Article titles for #{magazine.name}: #{magazine.article_titles}"
  end
end
# exit
puts "Exiting Magazine App."