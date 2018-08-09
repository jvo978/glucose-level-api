class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :glucose
      t.string :test
      t.date :date
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
