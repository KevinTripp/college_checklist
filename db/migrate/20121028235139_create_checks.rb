class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :name
      t.timestamp :due_date
      t.timestamp :date_complete
      t.boolean :completed
      t.references :college_list

      t.timestamps
    end
    add_index :checks, :college_list_id
  end
end
