module ProjectsHelper
    def get_billable_hours(project)
        if project.billable
            "#{project.hours} (100%)"
        else
            "0.00 (0%)"
        end
    end

    def get_billable_amount(project)
        # number_to_currency(project.billable_rate * project.hours)
        project.billable_rate * project.hours
    end

    def get_total_billable_amount()
        projects = Project.all
        total = 0
        for project in projects do
            total += get_billable_amount(project)
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
