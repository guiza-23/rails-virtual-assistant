class CreateAplications < ActiveRecord::Migration[7.0]
  def change
    create_table :aplications do |t|
      t.string :status
      t.references :assistants, null: false, foreign_key: true
      t.references :offers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
