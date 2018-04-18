class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :title_en
      t.string :summary
      t.integer :entity_id

      t.timestamps
    end
  end
end
