class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :title
      t.string :title_en

      t.timestamps
    end
  end
end
