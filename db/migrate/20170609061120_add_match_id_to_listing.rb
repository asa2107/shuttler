class AddMatchIdToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :match_id, :integer
  end
end
