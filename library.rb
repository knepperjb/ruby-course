
class Book
  attr_reader :author, :title
  attr_accessor :id, :status

  def initialize(title, author, id = nil, status = 'available')
    @author = author
    @title = title
    @id = id
    @status = status
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
  def initialize(name)
    @name = name
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

  def add_book
  end


  def check_out_book(book_id, borrower)
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
