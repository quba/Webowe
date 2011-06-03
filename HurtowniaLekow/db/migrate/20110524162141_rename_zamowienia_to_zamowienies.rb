class RenameZamowieniaToZamowienies < ActiveRecord::Migration
  def self.up
    rename_table :zamowienia, :zamowienies
  end

  def self.down
    rename_table :zamowienies, :zamowienia
  end
end
