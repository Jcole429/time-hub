class Employee < ApplicationRecord
    has_many :entries
    validates :first_name, :last_name, presence: true
end
