class Zamowienie < ActiveRecord::Base
  validates :uzytkownik_id, :presence => true
  validates :lek_id, :presence => true
  validates :Ilosc, :presence => true
  validates :DataZamowienia, :presence => true  
end
