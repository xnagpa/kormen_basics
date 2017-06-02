require_relative '../../binary_search/binary_search'

RSpec.describe BinarySearch do
  subject { BinarySearch.new }
  context 'looping realisation' do
    context 'when element exists within array' do
      arr = [1, 2, 3, 4, 5, 6]
      it 'finds element' do
        expect(subject.search(arr, 5)).to eq 4
      end
    end

    context 'when element does not exist within array' do
      arr = [1, 2, 3, 4, 5, 6]
      it 'finds element' do
        expect(subject.search(arr, 111)).to eq 'NOT_FOUND'
      end
    end
  end

  context 'recursive realisation' do
    context 'when element exists within array' do
      arr = [1, 2, 3, 4, 5, 6]
      it 'finds element' do
        expect(subject.search_recursive(arr, 5, 0, arr.length - 1)).to eq 4
      end
    end

    context 'when element does not exist within array' do
      arr = [1, 2, 3, 4, 5, 6]
      it 'finds element' do
        expect(subject.search_recursive(arr, 111, 0, arr.length - 1)).to eq 'NOT_FOUND'
      end
    end
  end
end
