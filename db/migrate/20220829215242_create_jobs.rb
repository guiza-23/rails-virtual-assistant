class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :category
      t.string :description
      t.references :assistants, null: false, foreign_key: true

      t.timestamps
    end
  end
end
