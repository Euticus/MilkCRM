class Employees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :employee_number

      t.timestamps
    end
  end
end
