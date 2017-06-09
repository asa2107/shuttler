class AddStatusToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :status, :boolean
  end
end
