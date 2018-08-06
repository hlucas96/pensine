class AddIpToRating < ActiveRecord::Migration[5.1]
  def change
    add_column :ratings, :ip, :string
  end
end
