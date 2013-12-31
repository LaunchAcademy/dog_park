# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dog do
    name "MyString"
  end
  factory :dog_with_owner do
    after(:create) {|instance| create(:owner, dog: instance)}
  end
end
