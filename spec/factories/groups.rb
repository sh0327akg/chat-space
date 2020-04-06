FactoryBot.define do
  factory :group do
    name{faker::team.name}
  end
end