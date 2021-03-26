class SummaryController < ApplicationController
  def index
      @projects = Entry.select('projects.project as name', 'projects.client as client', 'SUM(hours) as hours', 
      'sum(case when billable = 1 then hours else 0 end) as billable_hours',
      'sum(hours * billable_rate) as billable_amount').joins(:project).group(:project, :client).order(:project)
  end
end
