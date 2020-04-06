FactoryBot.define do
  factory :user do
    password = Faker::internet.password(min_length:8)
    name  {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password{password}
    password_confirmation{password}
  end
end