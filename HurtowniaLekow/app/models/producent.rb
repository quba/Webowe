class Producent < ActiveRecord::Base
  validates :NazwaProducenta, :presence => true
  validates :Adres, :presence => true
  validates :Telefon, :presence => true
  validates :Email, :presence => true

  has_many :lek
end
