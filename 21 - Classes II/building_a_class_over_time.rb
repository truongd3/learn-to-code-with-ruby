class Book
  attr_reader :title, :author, :pages

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

end

goosebump = Book.new("Textbook", "2DT", 100)