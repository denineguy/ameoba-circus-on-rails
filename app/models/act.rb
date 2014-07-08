class Act < ActiveRecord::Base
  has_many :ameobas
  has_many :talents, :through => :ameobas
end
