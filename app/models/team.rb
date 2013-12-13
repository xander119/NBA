class Team < ActiveRecord::Base
has_many :players
has_many :coaches
has_many :posts, :dependent=> :destroy
belongs_to :division

validates_presence_of :name 
validates_uniqueness_of :name
validates_presence_of :city
validates_presence_of :arena
end
