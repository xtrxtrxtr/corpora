# frozen_string_literal: true

# Text sample for corpus
#
# Attributes:
#   body [text], required
#   corpus_id [Corpus], required
#   created_at [Datetime]
#   process_level [Integer]
#   title [String]
#   updated_at [DateTime]
#   uuid [uuid], required
class TextSample < ApplicationRecord
  include HasUuid

  belongs_to :corpus, counter_cache: true

  validates :title, length: { minimum: 1, maximum: 255 }, allow_blank: true
  validates :body, presence: true
end
