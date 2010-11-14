class CreateCallLists < ActiveRecord::Migration
  def self.up
    create_table :call_lists do |t|
      t.string :type
      t.string :name
      t.references :user
      t.references :county
      t.references :state

      t.timestamps
    end
  end

  def self.down
    drop_table :call_lists
  end
end
