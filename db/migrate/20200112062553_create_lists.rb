class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :attendance
      t.string :number

      t.timestamps
    end
  end
end
