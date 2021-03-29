class Project < ApplicationRecord
  has_many :entries
  validates :project, :client, :project_code, presence: true

  def project_code_with_name
    "#{project_code} - #{project}"
  end
end
