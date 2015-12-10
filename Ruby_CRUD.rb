#CRUD
=begin
  
Create 
Read 
Update 
Delete
  
=end

books = {
  brahma_sutra_bhasya: "Acharya Madhwa",
  sarasabharati_vilasa: "Vadiraja theertha",
  parimala: "Raghavendra theertharu",

}

puts "What would you like to do? Options: (add) (update) (delete) (list)"
choice = gets.chomp

case choice
  when "add"
    puts "What book would you like to add to your book store?"
    title = gets.chomp

    if books[title.to_sym].nil?
      puts "Who is the author?"
      author = gets.chomp
      books[title.to_sym] = author
      puts "#{title} with author #{author} has been added to book list"
    else
      puts "Book already exists..."
    end

  when "update"
    puts "what book would you like to change?"
    title = gets.chomp

    if books[title.to_sym].nil?
      puts "Error! Book not found"
    else
      puts "Edit author's name"
      author_edit = gets.chomp
      books[title.to_sym] = author_edit
      puts "Author's name for the book #{title} has been updated"
    end


end


puts books

 