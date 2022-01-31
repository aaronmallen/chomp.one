# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:login) { |n| Faker::Internet.safe_email.gsub('@', "#{n}@") }
    password { Faker::Internet.password(min_length: 8, max_length: 72) }

    after(:build) do |user, _evaluator|
      user.password_confirmation ||= user.password
    end
  end
end
