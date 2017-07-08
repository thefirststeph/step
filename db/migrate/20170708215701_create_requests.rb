class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :organization
      t.references :patient
      t.datetime :time
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
