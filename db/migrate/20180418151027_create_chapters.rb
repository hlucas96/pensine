class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.integer :chapter_id
      t.string :title
      t.string :title_en
      t.string :summary

      t.timestamps
    end
  end
end
