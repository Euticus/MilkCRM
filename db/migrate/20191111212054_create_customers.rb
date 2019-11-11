class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :budget

      t.timestamps
    end
  end
end
