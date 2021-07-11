class AddOverallsharesToVentureShare < ActiveRecord::Migration[6.1]
  def change
    add_column :venture_shares, :overall_shares, :integer
  end
end
