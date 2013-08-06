class Admin::Category < ActiveRecord::Base
  #vazba na ostatni tridy
  has_many :posts

  #validace
  validates :name, :order, :presence => true

  validates :order, :numericality => {:greater_than_or_equal_to => 0 }

  validates :name, :order, :uniqueness => true
end
