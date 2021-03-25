# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'GM_Coding_Exercise_Sample_Data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Project.new
    t.date = row["Date"]
    t.client = row["Client"]
    t.project = row["Project"]
    t.project_code = row["Project Code"]
    t.hours = row["Hours"]
    t.billable = row["Billable?"]
    t.first_name = row["First Name"]
    t.last_name = row["Last Name"]
    t.billable_rate = row["Billable Rate"]
    t.save
    puts "#{t.date}, #{t.client}, #{t.project}, #{t.project_code}, #{t.hours}, " +
         "#{t.billable}, #{t.first_name}, #{t.last_name}, #{t.billable_rate} saved"
end