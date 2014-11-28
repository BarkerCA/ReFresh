class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :start_date
      t.date :end_date
      t.string :subject
      t.string :location
      t.text :memo

      t.timestamps
    end
  end
end
