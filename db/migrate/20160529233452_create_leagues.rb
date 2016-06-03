class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.text :name

      t.integer :user_id

    end
  end
end
