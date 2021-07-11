class CreateVentureShares < ActiveRecord::Migration[6.1]
  def change
    create_table :venture_shares do |t|
      t.integer :venture_id
      t.integer :unit_share_value
      t.integer :total_sold_shares
      t.integer :available_shares
      t.decimal :valuation_cap

      t.timestamps
    end
  end
end
