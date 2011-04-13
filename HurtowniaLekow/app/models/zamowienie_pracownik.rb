class ZamowieniePracownik < ActiveRecord::Base
  belongs_to :pracownik
  has_many :zamowienie
end
