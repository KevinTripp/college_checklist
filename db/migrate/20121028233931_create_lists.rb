class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.timestamp :due_date
      t.timestamp :date_completed
      t.references :college_list

      t.timestamps
    end
    add_index :lists, :college_list_id
  end
end
