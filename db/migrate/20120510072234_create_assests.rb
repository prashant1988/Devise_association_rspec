class CreateAssests < ActiveRecord::Migration
  def change
    create_table :assests do |t|
      t.integer :assest_no
      t.string :assest_type
      t.date :issue_date
      t.references :emp

      t.timestamps
    end
    add_index :assests, :emp_id
  end
end
