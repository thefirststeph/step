class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
    	t.references :issuable, :polymorphic => true
    	t.string :name

      t.timestamps
    end
  end
end
