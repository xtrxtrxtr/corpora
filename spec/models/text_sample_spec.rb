# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TextSample do
  before do
    create(:text_sample)
  end

  it_behaves_like 'has_uuid'

  it { is_expected.to belong_to(:corpus).counter_cache(true) }

  describe 'validation' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:title).is_at_least(1).is_at_most(255).allow_blank }
  end
end
