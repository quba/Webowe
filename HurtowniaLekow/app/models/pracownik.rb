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

  has_one :uzytkownik
  has_many :zamowienie_pracownik
  has_many :zamowienie, :trough => :zamowienie_pracownik
end
