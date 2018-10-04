class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.references :user, foreign_key: true
      t.references :train, foreign_key: true
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
