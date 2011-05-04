class RenameLekiToLeks < ActiveRecord::Migration
  def self.up
    rename_table :leki, :leks
  end

  def self.down
    rename_table :leks, :leki
  end
end
