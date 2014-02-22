class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.references :college_list
      t.string :name
      t.timestamp :due_date
      t.timestamp :date_complete
      t.boolean :completed

      t.timestamps
    end
    add_index :checklists, :college_list_id
  end
end
