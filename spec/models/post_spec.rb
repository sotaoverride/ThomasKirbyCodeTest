require 'rails_helper'

RSpec.describe Post, type: :model do
    it 'has a valid factory' do
        expect(build(:post)).to be_valid
    end
    
    it 'is invalid without a body' do
    expect(build(:post, body: nil)).to_not be_valid
  end
    
end

