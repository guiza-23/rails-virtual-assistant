class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.boolean :status
      t.date :date_start
      t.date :date_end
      t.references :employees, null: false, foreign_key: true

      t.timestamps
    end
  end
end
