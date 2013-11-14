class Player < ActiveRecord::Base
has_many :player_statistics, :dependent =>:destroy

belongs_to :position

belongs_to :team

validates_presence_of :name
validates_presence_of :position
validates_presence_of :team
end
