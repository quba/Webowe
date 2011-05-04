class DodatkoweKolumnyKlienta < ActiveRecord::Migration
  def self.up
    add_column :klients, :NazwaKlienta, :string
    add_column :klients, :KodPocztowy, :string
    add_column :klients, :Adres, :string
    add_column :klients, :NIP, :string
    add_column :klients, :REGON, :string
    add_column :klients, :Telefon, :string

    add_index :klients, :NazwaKlienta, :unique => true
  end

  def self.down
    remove_column :klients, :NazwaKlienta
    remove_column :klients, :KodPocztowy
    remove_column :klients, :Adres
    remove_column :klients, :NIP
    remove_column :klients, :REGON
    remove_column :klients, :Telefon
  end
end
