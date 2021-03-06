require 'rails_helper'

describe Feed do

  describe 'associations' do
    it { should have_many(:entries).dependent(:destroy) }
  end

  describe 'presence' do
    it { should validate_presence_of(:url) }
  end

  describe 'length' do
    it { should ensure_length_of(:url).is_at_most(100) }
  end
end
