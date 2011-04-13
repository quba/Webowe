class ZamowieniePracownik < ActiveRecord::Base
  belongs_to :pracownik
  belongs_to :zamowienie
end
