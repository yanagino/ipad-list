class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :attendance
      t.integer :number

      t.timestamps
    end
  end
end
