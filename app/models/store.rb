class Store < ActiveRecord::Base
	validates :price, :presence => true,
            :format => { :with => /^(\$)?(\d+)(\.|,)?\d{0,2}?$/ }
end
