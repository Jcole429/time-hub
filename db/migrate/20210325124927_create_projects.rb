class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_code
      t.string :client
      t.string :project
      t.timestamps
    end
  end
end
