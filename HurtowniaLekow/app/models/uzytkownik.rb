class Uzytkownik < ActiveRecord::Base
  validates :id, :presence => true, :uniqueness => true
  validates :Login, :presence => true, :uniqueness => true
  validates :Haslo, :presence => true
  validates :Typ, :presence => true

  has_many :zamowienie
  belongs_to :klient
  belongs_to :pracownik
end
