module ProjectsHelper
  def self.get_total_billable_amount(entries)
    total = 0
    for entry in entries do
      total += (entry.billable_rate * entry.hours)
    end
    return total
  end

  def self.get_total_hours_tracked(entries)
    total = 0
    for entry in entries do
      total += entry.hours
    end
    return total
  end
end
