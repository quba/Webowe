class CreateDostawy < ActiveRecord::Migration
  def self.up
    create_table :dostawy do |t|
      t.references :lek, :null => false
      t.integer :Ilosc, :null => false
      t.integer :CenaDostawy, :null => false
      t.date :DataZamowienia, :null => false
      t.date :DataRealizacji

      #t.timestamps
    end
    #add a foreign key
    #execute <<-SQL
    #ALTER TABLE dostawy
    #  ADD CONSTRAINT fk_dostawy_leki
    #  FOREIGN KEY(lek_id)
    #  REFERENCES leki(id)
    #SQL

  end

  def self.down
    drop_table :dostawy
  end
end
