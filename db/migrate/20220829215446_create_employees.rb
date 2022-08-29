class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :users, null: false, foreign_key: true
      t.references :companies, null: false, foreign_key: true
      t.references :jobs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
