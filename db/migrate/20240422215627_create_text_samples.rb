# frozen_string_literal: true

# Create table for TextSample model
class CreateTextSamples < ActiveRecord::Migration[7.1]
  def change
    create_table :text_samples, comment: 'Text samples for corpora' do |t|
      t.references :corpus, null: false, foreign_key: { on_update: :cascade, on_delete: :cascade }
      t.uuid :uuid, null: false, index: { unique: true }
      t.integer :process_level, limit: 2, null: false, default: 0, comment: 'How many process layers used'
      t.string :title, comment: 'Title for samples like post, diary entry, dream, etc.'
      t.text :body, null: false, comment: 'Plain text'
      t.timestamps
    end
  end
end
