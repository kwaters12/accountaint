class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.float :time
      t.references :customer, index: true
      t.references :employee, index: true
      t.timestamps
    end
  end
end
