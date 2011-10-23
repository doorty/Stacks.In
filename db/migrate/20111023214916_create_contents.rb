class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :stack_id
      t.string :description
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end
