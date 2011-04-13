class Klient < ActiveRecord::Base
  validates :uzytkownik_id, :presence => true, :uniqueness => true
  validates :NazwaKlienta, :presence => true, :uniqueness => true
  validates :Miasto, :presence => true
  validates :KodPocztowy, :presence => true
  validates :Adres, :presence => true
  validates :NIP, :presence => true
  validates :REGON, :presence => true
  validates :Telefon, :presence => true
  validates :Email, :presence => true

  belongs_to :uzytkownik
end
