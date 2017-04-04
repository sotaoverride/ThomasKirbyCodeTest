FactoryGirl.define do
    # Define a basic devise user.
    factory :user do
        email { Faker::Internet.email }
        password "example"
        password_confirmation "example"
    end
end

