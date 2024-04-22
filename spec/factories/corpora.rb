# frozen_string_literal: true

FactoryBot.define do
  factory :corpus do
    sequence(:title) { |n| "Text corpus #{n}" }
  end
end
