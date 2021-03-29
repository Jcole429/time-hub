class Entry < ApplicationRecord
  belongs_to :project
  belongs_to :employee
  validates :project_id, :employee_id, :date, :hours, :billable_rate, presence: true
end
