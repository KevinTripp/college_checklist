class CreateCollegeLists < ActiveRecord::Migration
  def change
    create_table :college_lists do |t|
      t.string :name
      t.integer :priority
      t.timestamp :date_due
      t.timestamp :date_complete
      t.boolean :accepted
      t.timestamp :date_accepted
      t.integer :user_id
      t.integer :completed_steps
      t.integer :incomplete_steps

      t.timestamps
    end
  end
end
