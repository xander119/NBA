class Team < ActiveRecord::Base
has_many :players
has_many :coaches
has_many :posts, :dependent=> :destroy
belongs_to :division

validates_presence_of :name 
validates_uniqueness_of :name
validates_presence_of :city
validates_presence_of :arena

geocoded_by :address
after_validation :geocode, :if => :address_changed?
	
	def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['name LIKE  ?', search_condition])
	end
end
