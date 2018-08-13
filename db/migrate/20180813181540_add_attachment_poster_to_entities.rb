class AddAttachmentPosterToEntities < ActiveRecord::Migration[5.1]
  def self.up
    change_table :entities do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :entities, :poster
  end
end
