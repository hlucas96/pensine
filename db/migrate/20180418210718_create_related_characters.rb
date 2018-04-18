class CreateRelatedCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :related_characters do |t|
      t.integer :quote_id
      t.integer :character_id

      t.timestamps
    end
  end
end
