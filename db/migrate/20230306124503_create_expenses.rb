class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :amount
      t.date :date
      t.references :category, null: false, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
