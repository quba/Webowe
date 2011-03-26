class CreateUzytkownicy < ActiveRecord::Migration
  def self.up
    create_table :uzytkownicy do |t|
      t.string :Login, :null => false, :unique => true
      t.string :Haslo, :null => false
      t.integer :Typ, :null => false

      #t.timestamps
    end
  end

  def self.down
    drop_table :uzytkownicy
  end
end
