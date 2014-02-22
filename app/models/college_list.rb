class CollegeList < ActiveRecord::Base
  attr_accessible :accepted, :completed_steps, :date_accepted, :date_complete, :date_due, :incomplete_steps, :name, :priority, :user_id
end
