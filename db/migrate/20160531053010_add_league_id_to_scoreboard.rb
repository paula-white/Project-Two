class AddLeagueIdToScoreboard < ActiveRecord::Migration
  def change
    add_column :scoreboards, :league_id, :integer
  end
end
