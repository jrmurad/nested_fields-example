class Chapter < ActiveRecord::Base
  belongs_to :book
  has_many :pages, :order => :number
  accepts_nested_attributes_for :pages, :allow_destroy => true
end
