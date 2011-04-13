class Dostawa < ActiveRecord::Base
  validates :lek_id, :presence => true
  validates :Ilosc, :presence => true
  validates :CenaDostawy, :presence => true
  validates :DataZamowienia, :presence => true

  has_one :lek
end
