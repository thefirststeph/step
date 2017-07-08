class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
    	t.references :issuable, :polymorphic => true

      t.timestamps
    end
  end
end
