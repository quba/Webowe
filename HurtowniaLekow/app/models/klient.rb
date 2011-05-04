class Klient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :NazwaKlienta, :KodPocztowy, :Adres, :NIP, :REGON, :Telefon
  validates :NazwaKlienta, :presence => true, :uniqueness => true
  validates :KodPocztowy, :presence => true
  validates :Adres, :presence => true
  validates :NIP, :presence => true
  validates :REGON, :presence => true
  validates :Telefon, :presence => true

end
