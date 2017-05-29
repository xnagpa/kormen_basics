require_relative '../../linear_search/linear_search'

RSpec.describe LinearSearch do
  subject { LinearSearch.new }
  context '#dummy_search' do
    it 'returns index by value' do
      expect(subject.dummy_search([1, 2, 5, 4, 5, 6], 5)).to equal 4
    end

    it 'returns `not found` if nothing to return' do
      expect(subject.dummy_search([1, 2, 7, 4, 7, 6], 5)).to eq 'not_found'
    end
  end

  context '#better_search' do
    it 'returns index by value' do
      expect(subject.better_search([1, 2, 5, 4, 5, 6], 5)).to equal 2
    end

    it 'returns `not found` if nothing to return' do
      expect(subject.better_search([1, 2, 7, 4, 7, 6], 5)).to eq 'not_found'
    end
  end

  context '#sentinel_linear_search' do
    it 'returns index by value' do
      expect(subject.sentinel_linear_search([1, 2, 5, 4, 5, 6], 5)).to equal 2
    end

    it 'returns `not found` if nothing to return' do
      expect(subject.sentinel_linear_search([1, 2, 7, 4, 7, 6], 5)).to eq 'not_found'
    end
  end

  context '#recursive_linear_search' do
    it 'returns index by value' do
      expect(subject.recursive_linear_search([1, 2, 5, 4, 5, 6], 5, 0, 6)).to equal 2
    end

    it 'returns `not found` if nothing to return' do
      expect(subject.recursive_linear_search([1, 2, 7, 4, 7, 6], 5, 0, 6)).to eq 'not_found'
    end
  end
end
