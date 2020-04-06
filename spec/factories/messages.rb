FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    image   {File.open("#{rails.root}/public/images/test_image.jpg")}
    user
    group
  end
end