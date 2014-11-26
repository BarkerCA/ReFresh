class CreateApppointments < ActiveRecord::Migration
  def change
    create_table :apppointments do |t|
      t.string :title
      t.date :date
      t.text :location
      t.text :memo

      t.timestamps
    end
  end
end
