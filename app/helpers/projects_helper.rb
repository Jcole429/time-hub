module ProjectsHelper

    def get_total_billable_amount(projects)
        total = 0
        for project in projects do
            total += project.billable_amount
        end
        return total
    end

    def get_total_hours_tracked()
        projects = Project.all
        total = 0
        for project in projects do
            total += project.hours
        end
        return total
    end
end
