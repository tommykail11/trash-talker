FactoryGirl.define do
  factory :user do
    name     "Tommy Kail"
    email    "tommykail@example.com"
    password "testpassword"
    password_confirmation "testpassword"
  end
end