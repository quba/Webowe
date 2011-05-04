class RenameProducenciToProducents < ActiveRecord::Migration
  def self.up
    rename_table :producenci, :producents
  end

  def self.down
    rename_table :producents, :producenci
  end
end
