FactoryGirl.define do
  factory :comment do
    body { Faker::Lorem.sentence  }
    user { create(:user) }
    post { create(:post) }
  end
end
