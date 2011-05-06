class AddTypeToPracowniks < ActiveRecord::Migration
  def self.up
    add_column :pracowniks, :type, :string
  end

  def self.down
    remove_column :pracowniks, :type
  end
end
