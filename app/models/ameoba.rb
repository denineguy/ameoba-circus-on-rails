class Ameoba < ActiveRecord::Base
  belongs_to :talent
  belongs_to :act

  # accepts_nested_attributes_for :ameoba_acts

  NAMES = ["Lucy", "Sarah","Alex", "Amber", "Stacy", "Cher", "Lisa", "Jamie", "Simone", "Dawn", "Nicole" ]

  def split
    2.times do
      Ameoba.create(:name => get_name, :talent_id => self.talent_id, :generating_number => (self.generating_number + 1), :act_id => self.act_id) 
    end
    self.destroy
  end

  def get_name
    new_name = self.name
    while new_name == self.name
      new_name = NAMES.sample
    end
    return new_name
  end
end
