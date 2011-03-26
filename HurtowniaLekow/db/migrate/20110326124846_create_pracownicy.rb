class CreatePracownicy < ActiveRecord::Migration
  def self.up
    create_table :pracownicy, :id => false do |t|
      t.references :uzytkownik, :null => false
      t.string :Nazwisko
      t.string :Imie     
      t.string :Miasto, :null => false
      t.string :KodPocztowy, :null => false
      t.string :Adres, :null => false
      t.date :DataZatrudnienia, :null => false
      t.date :DataZwolnienia, :null => false
      t.string :NIP, :null => false      
      t.string :Telefon, :null => false
      t.string :Email, :null => false

      #t.timestamps
    end
    #setting an unique index - uzytkownik_id
    add_index :pracownicy, :uzytkownik_id, :unique => true
  end

  def self.down
    drop_table :pracownicy
  end
end
