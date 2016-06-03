class AddImageToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :image, :text
  end
end
