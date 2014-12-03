require 'pry-byebug'

class Book

  attr_reader :author, :title
  attr_accessor :id, :status, :borrower


  def initialize(title, author, id = nil, status = 'available', borrower = nil)
    @author = author
    @title = title
    @id = id
    @status = status
    @borrower = borrower #will be assignd when book is borrowed.
  end


  def check_out
    if @status == 'checked_out'
      x = false
      return x
    else
      @status = 'checked_out'
      x = true
      return x
    end
  end


  def check_in
    @status = 'available'
  end


end

######################################################


class Borrower

  attr_reader :name
  attr_accessor :borrower_books

  def initialize(name, borrower_books = [])
    @name = name
    @borrower_books = borrower_books #not necessary per instructinos, but useful 
  end                                #to keep track of each borrower's current book inentory.
end

######################################################

class Library
  attr_reader :name
  attr_accessor :books, :available_books, :borrowed_books

  def initialize(name, available_books = [], borrowed_books = [])
    @name = name
    @books = []
    @available_books = available_books 
    @borrowed_books = borrowed_books
    @x = 0 #this is for book ID assignment
  end


  def register_new_book(title, author)
    @x += 1
    book = Book.new(title, author, id = @x)
    @books << book
    @available_books << book

  end


  def check_out_book(book_id, borrower)
    if borrower.borrower_books.count <= 1 #this keeps user from checking out more than 2 books.
      @books.each do |b|
        if book_id == b.id #finds a book by id.
          if b.status == 'available'
            b.check_out  #runs check_out which will make book not available.
            b.borrower = borrower.name #assigns the @borrower a value to access later.
            borrower.borrower_books << b #adds book to borrower's array of books.
            @available_books.delete(b) #remoes book from @available_books.
            @borrowed_books << b  #pushes book into @borrowed_books.
            return b
          else
            return nil
          end
        end
      end
    else
      return nil
    end
  end


  def get_borrower(book_id)
    @books.each do |b|
      if book_id == b.id
        return b.borrower
      end
    end
  end


  def check_in_book(book)
      book.check_in #calls function to return status to 'available'
      @borrowed_books.delete(book) #removes book from borrowed_books so it can be checked out again.
      @available_books.push(book)
  end

end
