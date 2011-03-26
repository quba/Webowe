class Uzytkownik < ActiveRecord::Base
  validates :Login, :presence => true, :uniqueness => true
  validates :Haslo, :presence => true
  validates :Typ, :presence => true
end
