class Checklist < ActiveRecord::Base
  belongs_to :college_list
  attr_accessible :completed, :date_complete, :due_date, :name
end
