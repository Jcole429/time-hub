class Project < ApplicationRecord
    has_many :entries
    validates :project, :client, :project_code, presence: true
end
