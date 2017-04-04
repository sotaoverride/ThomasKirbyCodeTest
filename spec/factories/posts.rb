
FactoryGirl.define do
  factory :post do
    title {Faker::Lorem.sentence }
    body { Faker::Lorem.sentence  }
    user { create(:user) }
  end
end
