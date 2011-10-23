class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.integer :user_id
      t.string :title
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
