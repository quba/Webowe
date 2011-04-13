class Uzytkownik < ActiveRecord::Base
  validates :id, :presence => true, :uniqueness => true
  validates :Login, :presence => true, :uniqueness => true
  validates :Haslo, :presence => true
  validates :Typ, :presence => true

  has_many :zamowienies
  has_one :klient
  has_one :pracownik
end
