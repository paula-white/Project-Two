class League < ActiveRecord::Base
  has_one :scoreboard
  has_and_belongs_to_many :users
  belongs_to :user, foreign_key: "creator_id"
  has_many :messages
  belongs_to :sport
  has_one :sport
end
