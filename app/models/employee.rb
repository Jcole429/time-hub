class Employee < ApplicationRecord
    has_many :entries
    validates :first_name, :last_name, presence: true

    def last_name_first_name
        "#{last_name}, #{first_name}"
    end
end
