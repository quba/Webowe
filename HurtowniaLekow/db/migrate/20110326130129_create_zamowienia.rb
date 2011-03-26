class CreateZamowienia < ActiveRecord::Migration
  def self.up
    create_table :zamowienia do |t|
      t.references :uzytkownik, :null => false
      t.references :lek, :null => false
      t.integer :Ilosc, :null => false
      t.boolean :CzyWyslane, :default => false, :null => false
      t.date :DataZamowienia, :null => false
      t.date :DataRealizacji

      #t.timestamps
    end
    #add a foreign key
    execute <<-SQL
      ALTER TABLE zamowienia
        ADD CONSTRAINT fk_zamowienia_uzytkownicy
        FOREIGN KEY (uzytkownik_id)
        REFERENCES uzytkownicy(id)
    SQL
    #add a foreign key
    execute <<-SQL
      ALTER TABLE zamowienia
        ADD CONSTRAINT fk_zamowienia_leki
        FOREIGN KEY (lek_id)
        REFERENCES leki(id)
    SQL
    
  end

  def self.down
    drop_table :zamowienia
  end
end
