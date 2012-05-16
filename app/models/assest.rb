class Assest < ActiveRecord::Base
  belongs_to :emp
  attr_accessible :assest_no, :assest_type, :issue_date  ,:emp_id
  validates :assest_type  , :presence=> true
end
