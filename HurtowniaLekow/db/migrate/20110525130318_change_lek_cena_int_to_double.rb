class ChangeLekCenaIntToDouble < ActiveRecord::Migration
  def self.up
    change_column :leks, :Cena, :double
  end

  def self.down
    change_column :leks, :Cena, :integer
  end
end
