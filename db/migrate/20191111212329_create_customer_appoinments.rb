class CreateCustomerAppoinments < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_appoinments do |t|
      t.string :description
      t.string :time
      t.string :date
      t.string :location
      t.integer :customer_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
