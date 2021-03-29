class SummaryController < ApplicationController
  def index
    @projects = Entry.select('projects.id','projects.project as name', 'projects.client as client', 'SUM(hours) as hours', 
                             'sum(case when billable = true then hours else 0 end) as billable_hours',
                             'sum(hours * billable_rate) as billable_amount')
                             .joins(:project).group(:project, :client, 'projects.id').order(:project)
  end
end
