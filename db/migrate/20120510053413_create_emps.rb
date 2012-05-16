class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
