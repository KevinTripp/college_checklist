class CreateSteplists < ActiveRecord::Migration
  def change
    create_table :steplists do |t|
      t.string :name
      t.timestamp :due_date
      t.timestamp :date_completed
      t.reference :college_list

      t.timestamps
    end
  end
end
