class RenamePracownicyToPracowniks < ActiveRecord::Migration
  def self.up
    rename_table :pracownicy, :pracowniks
  end

  def self.down
    rename_table :pracowniks, :pracownicy
  end
end
