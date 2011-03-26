class CreateZamowieniaPracownicy < ActiveRecord::Migration
  def self.up
    create_table :zamowienia_pracownicy, :id => false do |t|
      t.references :zamowienie, :null => false
      t.references :uzytkownik, :null => false
      #t.timestamps
    end
    add_index :zamowienia_pracownicy, [ :zamowienie_id, :uzytkownik_id ], :unique => true
    #add a foreign key
    execute <<-SQL
      ALTER TABLE zamowienia_pracownicy
        ADD CONSTRAINT fk_zamowienia_pracownicy_zamowienia
        FOREIGN KEY (zamowienie_id)
        REFERENCES zamowienia(id)
    SQL
    #add a foreign key
    execute <<-SQL
      ALTER TABLE zamowienia_pracownicy
        ADD CONSTRAINT fk_zamowienia_pracownicy_uzytkownicy
        FOREIGN KEY (uzytkownik_id)
        REFERENCES uzytkownicy(id)
    SQL
  end

  def self.down
    drop_table :zamowienia_pracownicy
  end
end
