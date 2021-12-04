class CreateInvests < ActiveRecord::Migration[6.1]
  def change
    create_table :invests do |t|
      t.integer :user_id
      t.integer :business_id
      t.string :type_of_investment
      t.float :shares_purchased
      t.float :amount_invested
      t.string :investing_as

      t.timestamps
    end
  end
end
