class Pracownik < ActiveRecord::Base
  validates :uzytkownik_id, :presence => true, :uniqueness => true
  validates :Nazwisko, :presence => true
  validates :Imie, :presence => true
  validates :Miasto, :presence => true
  validates :KodPocztowy, :presence => true
  validates :Adres, :presence => true
  validates :DataZatrudnienia, :presence => true
  validates :DataZwolnienia, :presence => true
  validates :NIP, :presence => true  
  validates :Telefon, :presence => true
  validates :Email, :presence => true

  belongs_to :uzytkownik
  has_many :zamowienie_pracowniks
  has_many :zamowienies, :through => :zamowienie_pracowniks
end
