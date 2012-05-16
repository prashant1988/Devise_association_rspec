class Emp < ActiveRecord::Base
  attr_accessible :address, :age, :name, :employee_id

  validates :name  , :presence=> true
  has_many :assests
end
