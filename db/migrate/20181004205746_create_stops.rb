class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.string :place
      t.string :time
      t.references :train, foreign_key: true

      t.timestamps
    end
  end
end
