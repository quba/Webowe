class Zamowienie < ActiveRecord::Base
  validates :uzytkownik_id, :presence => true
  validates :lek_id, :presence => true
  validates :Ilosc, :presence => true
  validates :DataZamowienia, :presence => true

  belongs_to  :uzytkownik
  has_one :lek
  has_one :zamowienie_pracownik
  has_one :pracownik, :trough => :zamowienie_pracownik

end