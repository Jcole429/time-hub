class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.date :date
      t.string :client
      t.string :project
      t.string :project_code
      t.decimal :hours
      t.boolean :billable
      t.string :first_name
      t.string :last_name
      t.integer :billable_rate
      t.timestamps
    end
  end
end
