require './book'

describe Book do
  context 'Creating an instance of a Book' do
    it 'should create a new instace of a Book with a title' do
      title = 'Lord of Rings'
      book = Book.new(title, 'Tolkien')
      expect(book.title).to eq('Lord of Rings')
    end
    it 'should create a new instace of a Book with an author' do
      author = 'Tolkien'
      book = Book.new('Lord of Rings', author)
      expect(book.author).to eq('Tolkien')
    end
    it 'should create a new instace of a Book with a title and an author' do
      title = 'Lord of Rings'
      author = 'Tolkien'
      book = Book.new(title, author)
      expect(book.title).to eq('Lord of Rings')
      expect(book.author).to eq('Tolkien')
    end
  end
end
