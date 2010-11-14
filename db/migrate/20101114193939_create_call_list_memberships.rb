class CreateCallListMemberships < ActiveRecord::Migration
  def self.up
    create_table :call_list_memberships do |t|
      t.references :call_list
      t.references :number

      t.timestamps
    end
  end

  def self.down
    drop_table :call_list_memberships
  end
end
