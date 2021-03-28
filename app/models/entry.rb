class Entry < ApplicationRecord
    belongs_to :project
    validates :project_id, :date, :hours, :first_name, :last_name, :billable_rate, presence: true
end
