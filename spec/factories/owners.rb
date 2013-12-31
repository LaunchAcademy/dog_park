# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "MyString"
    last_name "MyString"
    email "test@test.com"

    factory :owner_with_dogs do
      after(:create) {|instance| create(:dog, owner: instance)}
    end
  end
end
