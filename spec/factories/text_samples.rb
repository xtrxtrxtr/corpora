# frozen_string_literal: true

FactoryBot.define do
  factory :text_sample do
    corpus
    body { 'Once upon a time there was a text sample.' }
  end
end
