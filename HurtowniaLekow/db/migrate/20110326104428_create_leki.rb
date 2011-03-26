class CreateLeki < ActiveRecord::Migration
  def self.up
    create_table :leki do |t|
      t.string :NazwaLeku, :null => false
      t.references :producent, :null => false
      t.integer :Cena, :null => false
      t.integer :Ilosc, :null => false
      t.string :Uwagi
      #t.timestamps
    end
    #add a foreign key
    execute <<-SQL
      ALTER TABLE leki
        ADD CONSTRAINT fk_leki_producenci
        FOREIGN KEY (producent_id)
        REFERENCES producenci(id)
    SQL

  end

  def self.down    
    drop_table :leki
  end
end
