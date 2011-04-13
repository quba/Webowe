class Lek < ActiveRecord::Base
  validates :producent_id, :presence => true
  validates :NazwaLeku, :presence => true
  validates :producent_id, :presence => true
  validates :Cena, :presence => true
  validates :Ilosc, :presence => true

  belongs_to :producent
  has_many :zamowienies
  has_many :dostawas
end
