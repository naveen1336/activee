class Product < ActiveRecord::Base
belongs_to :category
#attr_accessible :name, :price
scope :unreleased, lambda {where(:released_at => nil)}
end
