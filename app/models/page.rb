class Page < ActiveRecord::Base
  belongs_to :chapter
  acts_as_list :scope => :chapter, :column => :number
end
