FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)  { |n| "person_#{n}@example.com" }
    password   "password"
    password_confirmation "password"
    
    factory :admin do
      admin true
    end
  end
  
  factory :post do
    #sequence(:title) { |n| "Title #{n}" }
    content "Lorem ipsum"
    user
  end
end