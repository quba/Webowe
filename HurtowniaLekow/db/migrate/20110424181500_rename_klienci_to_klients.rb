class RenameKlienciToKlients < ActiveRecord::Migration
  def self.up
        rename_table :klienci, :klients
    end
    def self.down
        rename_table :klients, :klienci
    end
end
