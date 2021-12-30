class AddThreeColumnsToVentures < ActiveRecord::Migration[6.1]
  def change
    add_column :ventures, :amount_pledged, :decimal
    add_column :ventures, :total_competitors, :integer
    add_column :ventures, :invests_count, :integer
  end
end
