class List < ActiveRecord::Base
  belongs_to :college_list
  attr_accessible :date_completed, :due_date, :name
end
