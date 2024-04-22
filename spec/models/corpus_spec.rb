# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Corpus do
  before do
    create(:corpus, user_uuid: SecureRandom.uuid)
  end

  it_behaves_like 'has_uuid'

  it { is_expected.to have_many(:text_samples) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_length_of(:title).is_at_least(1).is_at_most(250) }
  it { is_expected.to validate_uniqueness_of(:title).scoped_to(:user_uuid) }
end
