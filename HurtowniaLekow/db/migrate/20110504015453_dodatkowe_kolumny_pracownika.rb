class DodatkoweKolumnyPracownika < ActiveRecord::Migration
  def self.up
    add_column :pracowniks, :Nazwisko, :string
    add_column :pracowniks, :Imie, :string
    add_column :pracowniks, :Miasto, :string
    add_column :pracowniks, :KodPocztowy, :string
    add_column :pracowniks, :Adres, :string
    add_column :pracowniks, :DataZatrudnienia, :date
    add_column :pracowniks, :DataZwolnienia, :date
    add_column :pracowniks, :NIP, :string
    add_column :pracowniks, :Telefon, :string
  end

  def self.down
    remove_column :pracowniks, :Nazwisko
    remove_column :pracowniks, :Imie
    remove_column :pracowniks, :Miasto
    remove_column :pracowniks, :KodPocztowy
    remove_column :pracowniks, :Adres
    remove_column :pracowniks, :DataZatrudnienia
    remove_column :pracowniks, :DataZwolnienia
    remove_column :pracowniks, :NIP
    remove_column :pracowniks, :Telefon
  end
end
