# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'GM_Coding_Exercise_Sample_Data_Projects.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Project.new
    t.project_code = row["Project Code"]
    t.client = row["Client"]
    t.project = row["Project"]
    t.save
    puts "#{t.id}, #{t.project_code}, #{t.client}, #{t.project} saved"
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'GM_Coding_Exercise_Sample_Data_Employees.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Employee.new
    t.first_name = row["First Name"]
    t.last_name = row["Last Name"]
    t.save
    puts "#{t.id}, #{t.first_name}, #{t.last_name} saved"
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'GM_Coding_Exercise_Sample_Data_Entries.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Entry.new
    t.date = Date.strptime(row["Date"], '%m/%d/%y')
    t.project_id = row["project_id"]
    t.employee_id = row["employee_id"]
    t.hours = row["Hours"]
    t.billable = row["Billable?"] == "Yes" ? 1 : 0
    t.billable_rate = row["Billable Rate"]
    t.save
    puts "#{t.id}, #{t.date}, #{t.project_id}, #{t.hours}, #{t.billable}, #{t.billable_rate} saved"
end