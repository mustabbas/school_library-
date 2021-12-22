require './corrector'

describe Corrector do
  context 'return first letter capital ' do
    it 'should return first letter capital' do
      name = 'mustafa'
      corrector = Corrector.new
      expect(corrector.correct_name(name)).to eq('Mustafa')
    end
  end

  context 'return 10 digit letter first letter in capital ' do
    it 'return 10 digit letter first letter in capital' do
      name = 'mustafaaaaaaaaaa'
      corrector = Corrector.new
      expect(corrector.correct_name(name)).to eq('Mustafaaaa')
    end
  end
end
