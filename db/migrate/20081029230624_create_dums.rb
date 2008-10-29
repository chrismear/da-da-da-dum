class CreateDums < ActiveRecord::Migration
  def self.up
    create_table :dums do |t|
      t.string :code
      t.timestamps
    end
  end

  def self.down
    drop_table :dums
  end
end
