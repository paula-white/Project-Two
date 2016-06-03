class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.text :name
      t.text :image

      t.integer :user_id
    end
  end
end
