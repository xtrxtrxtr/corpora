# frozen_string_literal: true

# Create table for Corpus model
class CreateCorpora < ActiveRecord::Migration[7.1]
  def change
    create_table :corpora, comment: 'Text corpora' do |t|
      t.uuid :uuid, null: false, index: { unique: true }
      t.uuid :user_uuid, comment: 'Owner'
      t.string :title, null: false
      t.integer :text_samples_count, null: false, default: 0, comment: 'Counter cache for samples'
      t.timestamps
    end

    add_index :corpora, %i[user_uuid title], unique: true
  end
end
