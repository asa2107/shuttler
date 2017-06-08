class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :recurring
      t.integer :no_of_weeks
      t.string :location
      t.integer :user_id

      t.timestamps

    end
  end
end
