class Entry < ApplicationRecord
    belongs_to :project
    belongs_to :employee
    validates :project_id, :date, :hours, :first_name, :last_name, :billable_rate, presence: true
end
