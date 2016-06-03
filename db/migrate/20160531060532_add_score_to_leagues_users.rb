class AddScoreToLeaguesUsers < ActiveRecord::Migration
  def change
    add_column :leagues_users, :score, :integer
  end
end
