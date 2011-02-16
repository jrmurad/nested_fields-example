class Book < ActiveRecord::Base
  has_one :cover
  has_many :chapters
  accepts_nested_attributes_for :chapters, :allow_destroy => true
  accepts_nested_attributes_for :cover, :allow_destroy => true
end
