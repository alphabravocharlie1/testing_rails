require 'faker'

FactoryBot.define do
  factory :company do
    com_name { Faker::Company.name  }
    user 
  end
end

def user_with_companies
  FactoryBot.create(:user) do |user|
    FactoryBot.create_list(:company, user: user)
  end
end