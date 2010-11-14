class CreateNumbers < ActiveRecord::Migration
  def self.up
    create_table :numbers do |t|
      t.string :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :numbers
  end
end
