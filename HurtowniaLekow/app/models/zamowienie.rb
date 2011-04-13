class Zamowienie < ActiveRecord::Base
  validates :uzytkownik_id, :presence => true
  validates :lek_id, :presence => true
  validates :Ilosc, :presence => true
  validates :DataZamowienia, :presence => true

  belongs_to  :uzytkownik
  belongs_to :lek
  has_many :zamowienie_pracowniks
  has_many :pracowniks, :through => :zamowienie_pracowniks

end