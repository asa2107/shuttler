class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :creator_id
      t.integer :acceptor_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
