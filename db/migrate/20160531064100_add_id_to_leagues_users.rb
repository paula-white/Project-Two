class AddIdToLeaguesUsers < ActiveRecord::Migration
  def change
    add_column :leagues_users, :id, :primary_key
  end
end
