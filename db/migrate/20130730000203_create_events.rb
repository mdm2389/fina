class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :when
      t.string :where
      t.text :details 
      t.belongs_to :user 

      t.timestamps
    end
  end
end
