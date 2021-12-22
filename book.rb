class Book
  attr_reader :rental
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def to_json(*)
    { title: @title, author: @author, rental: [] }.to_json
  end
end
