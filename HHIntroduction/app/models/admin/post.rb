class Admin::Post < ActiveRecord::Base
  #definice vazeb
  belongs_to :category

  #validace
  validates :name, :order, :content, :presence => true

  validates :order, :numericality => {:greater_than_or_equal_to => 0 }

  validates :name, :uniqueness => true
end
