class RenameUserIdToCreatorId < ActiveRecord::Migration
  def change
    rename_column :leagues, :user_id, :creator_id
  end
end
