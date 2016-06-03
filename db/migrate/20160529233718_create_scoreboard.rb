class CreateScoreboard < ActiveRecord::Migration
  def change
    create_table :scoreboards do |t|
      t.text :name
    end
  end
end
