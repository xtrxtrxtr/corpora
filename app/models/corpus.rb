# frozen_string_literal: true

# Text corpus
#
# Attributes:
#   created_at [DateTime]
#   text_sample_count [Integer]
#   title [String], required
#   user_uuid [UUID], owner's uuid
#   uuid [UUID], required
class Corpus < ApplicationRecord
  include HasUuid

  validates :title, presence: true, length: { minimum: 1, maximum: 250 }, uniqueness: { scope: :user_uuid }
end
