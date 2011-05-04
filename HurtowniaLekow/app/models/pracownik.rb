class Pracownik < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :Nazwisko, :Imie, :Miasto, :KodPocztowy, :Adres, :DataZatrudnienia, :DataZwolnienia, :NIP, :Telefon
  validates :Nazwisko, :presence => true, :length => {:minimum => 3}
  validates :Imie, :presence => true
  validates :Miasto, :presence => true
  validates :KodPocztowy, :presence => true
  validates :Adres, :presence => true
#  validates :DataZatrudnienia, :presence => true
#  validates :DataZwolnienia, :presence => true
  validates :NIP, :presence => true  
  validates :Telefon, :presence => true

  has_many :zamowienie_pracowniks
  has_many :zamowienies, :through => :zamowienie_pracowniks
end
