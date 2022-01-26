require 'csv'

CSV.foreach("library_p2_books.csv") do |row|
    
        Book.create!(
         libName: row[0],
         title: row[1],
         author: row[2],
         genre: row[3],
         subgenre: row[4],
         pages: row[5],
         publisher: row[6],
         copies: row[7]
        ) 
    
end
