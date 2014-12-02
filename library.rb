require 'pry-byebug'

class Book
  attr_reader :author, :title
  attr_accessor :id, :status
  attr_accessor :borrower

  def initialize(title, author, id = nil, status = 'available', borrower = nil)
    @author = author
    @title = title
    @id = id
    @status = status
    @borrower = borrower
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

class Borrower
  attr_reader :name
  attr_accessor :borrower_books
  def initialize(name, borrower_books = [])
    @name = name
    @borrower_books = borrower_books
  end
end

class Library
  attr_reader :name
  attr_accessor :books

  def initialize(name)
    @name = name
    @books = []
    @x = 0
  end

  # def books
  # end

  def register_new_book(title, author)
    @x += 1
    book = Book.new(title, author, id = @x)
    @books << book

  end

  def check_out_book(book_id, borrower)
    @books.each do |b|
      if book_id == b.id
        b.check_out
        b.borrower = borrower.name
        borrower.borrower_books << b
        return b
      end
    end
  end

  def get_borrower(book_id)
    @books.each do |b|
      if book_id == b.id
        return b.borrower
      end
    end
  end




  # def add_book(title, author)
  # end


  # def check_out_book(book_id, borrower)
  # end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
