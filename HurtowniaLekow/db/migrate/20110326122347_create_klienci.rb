class CreateKlienci < ActiveRecord::Migration
  def self.up
    create_table :klienci do |t|
      t.references :uzytkownik, :null => false      
      t.string :NazwaKlienta, :null => false
      t.string :Miasto, :null => false
      t.string :KodPocztowy, :null => false
      t.string :Adres, :null => false
      t.string :NIP, :null => false
      t.string :REGON, :null => false
      t.string :Telefon, :null => false
      t.string :Email, :null => false

      #t.timestamps
    end
    #setting an unique index - uzytkownik_id
    add_index :klienci, :uzytkownik_id, :unique => true
    add_index :klienci, :NazwaKlienta, :unique => true
  end

  def self.down
    drop_table :klienci
  end
end
