class AddVentureIdToInvests < ActiveRecord::Migration[6.1]
  def change
    add_column :invests, :venture_id, :integer
  end
end
