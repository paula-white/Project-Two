class LeaguesUsers < ActiveRecord::Migration
  def change

  create_table :leagues_users, :id => false do |t|
    t.integer :league_id
    t.integer :user_id
  end
end
end
