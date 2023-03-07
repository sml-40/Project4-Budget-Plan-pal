class RemoveCategoryIdFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :category_id, :integer
  end
end
