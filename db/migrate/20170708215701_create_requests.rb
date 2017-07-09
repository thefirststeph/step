class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :organization
      t.references :patient
      t.datetime :time
      t.string :location
      t.text :notes
      t.string :issue_param
      t.string :client_language_param
      t.string :client_category_param
      t.string :client_ethnicity_param
      t.int :ti_value
      t.int :cl_value
      t.int :cc_value
      t.int :ce_value
      t.timestamps
    end
  end
end
