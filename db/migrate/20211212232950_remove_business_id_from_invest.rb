class RemoveBusinessIdFromInvest < ActiveRecord::Migration[6.1]
  def change
    remove_column :invests, :business_id, :integer
  end
end
