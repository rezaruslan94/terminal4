FactoryGirl.define do
  factory :employee do
    name "MyString"

    trait :invalid do
      name nil
    end
  end
end
