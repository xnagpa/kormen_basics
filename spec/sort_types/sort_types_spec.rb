require_relative '../../sort_types/sort_types'

RSpec.describe SortTypes do
  subject { SortTypes.new }
  context '#choice' do
    arr = [4, 5, 3, 1, 2, 6, 7]
    it 'sorts the array' do
      expect(subject.choice(arr)).to eq [1, 2, 3, 4, 5, 6, 7]
    end
  end

  context '#insertion' do
    arr = [7, 10, 3, 1, 5, 6, 7]
    it 'sorts the array' do
      expect(subject.insertion(arr)).to eq [1, 3, 5, 6, 7, 7, 10]
    end
  end

  context '#merge_sort' do
    arr = [4, 5, 3, 1, 2, 6, 7]
    it 'sorts the array' do
      expect(subject.merge_sort(arr, 0, 6)).to eq [1, 2, 3, 4, 5, 6, 7]
    end
  end

  context '#quick' do
    arr = [4, 5, 3, 1, 2, 6, 7]
    it 'sorts the array' do
      expect(subject.quick(arr)).to eq [1, 2, 3, 4, 5, 6, 7]
    end
  end
end
