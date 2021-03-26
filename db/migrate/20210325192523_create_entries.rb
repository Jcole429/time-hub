class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.belongs_to :project, foreign_key: true
      t.date :date
      t.decimal :hours, precision: 10, scale: 2
      t.boolean :billable
      t.string :first_name
      t.string :last_name
      t.integer :billable_rate
      t.timestamps
    end
  end
end
