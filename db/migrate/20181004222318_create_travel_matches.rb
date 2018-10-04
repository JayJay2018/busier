class CreateTravelMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_matches do |t|
      t.integer :searcher
      t.integer :maker

      t.timestamps
    end
  end
end
