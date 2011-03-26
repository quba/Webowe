class CreateProducenci < ActiveRecord::Migration
  def self.up
    create_table :producenci do |t|      
      t.string :NazwaProducenta, :null => false
      t.string :Adres, :null => false
      t.string :Telefon, :null => false
      t.string :Email, :null => false

      #t.timestamps
    end
  end

  def self.down
    drop_table :producenci
  end
end
