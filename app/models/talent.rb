class Talent < ActiveRecord::Base
  has_many :ameobas

  # def to_s
  #   return self.name
  # end
end
