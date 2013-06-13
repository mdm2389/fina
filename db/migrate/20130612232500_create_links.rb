class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :description
      t.belongs_to :user

      t.timestamps
    end
  end
end
