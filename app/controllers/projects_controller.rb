class ProjectsController < ApplicationController
  def index
    @projects = Project.select(:project,
    :client, 'SUM(hours) as hours', 
    'sum(case when billable = 1 then hours else 0 end) as billable_hours',
    'sum(hours * billable_rate) as billable_amount').group(:project, :client).order(:project)
  end
end
