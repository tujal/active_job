class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.date :joining_date
      t.string :company_name

      t.timestamps
    end
  end
end
