class Act < ActiveRecord::Base
  has_many :ameobas
  has_many :talents, :through => :ameobas

  accepts_nested_attributes_for :ameobas
end
