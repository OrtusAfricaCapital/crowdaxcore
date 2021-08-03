class AddDetailsToVentures < ActiveRecord::Migration[6.1]
  def change
    add_column :ventures, :investment_amount_targetted, :decimal
    add_column :ventures, :feature_image, :string
  end
end
