class AddMessageToEvents < ActiveRecord::Migration
  def change
    add_column :events, :message, :text
  end
end
