# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110326130636) do

  create_table "dostawy", :force => true do |t|
    t.integer "lek_id",         :null => false
    t.integer "Ilosc",          :null => false
    t.integer "CenaDostawy",    :null => false
    t.date    "DataZamowienia", :null => false
    t.date    "DataRealizacji"
  end

  add_index "dostawy", ["lek_id"], :name => "fk_dostawy_leki"

  create_table "klienci", :primary_key => "uzytkownik_id", :force => true do |t|
    t.string "NazwaKlienta", :null => false
    t.string "Miasto",       :null => false
    t.string "KodPocztowy",  :null => false
    t.string "Adres",        :null => false
    t.string "NIP",          :null => false
    t.string "REGON",        :null => false
    t.string "Telefon",      :null => false
    t.string "Email",        :null => false
  end

  add_index "klienci", ["NazwaKlienta"], :name => "index_klienci_on_NazwaKlienta", :unique => true
  add_index "klienci", ["uzytkownik_id"], :name => "index_klienci_on_uzytkownik_id", :unique => true

  create_table "leki", :force => true do |t|
    t.string  "NazwaLeku",    :null => false
    t.integer "producent_id", :null => false
    t.integer "Cena",         :null => false
    t.integer "Ilosc",        :null => false
    t.string  "Uwagi"
  end

  add_index "leki", ["producent_id"], :name => "fk_leki_producenci"

  create_table "pracownicy", :primary_key => "uzytkownik_id", :force => true do |t|
    t.string "Nazwisko"
    t.string "Imie"
    t.string "Miasto",           :null => false
    t.string "KodPocztowy",      :null => false
    t.string "Adres",            :null => false
    t.date   "DataZatrudnienia", :null => false
    t.date   "DataZwolnienia",   :null => false
    t.string "NIP",              :null => false
    t.string "Telefon",          :null => false
    t.string "Email",            :null => false
  end

  add_index "pracownicy", ["uzytkownik_id"], :name => "index_pracownicy_on_uzytkownik_id", :unique => true

  create_table "producenci", :force => true do |t|
    t.string "NazwaProducenta", :null => false
    t.string "Adres",           :null => false
    t.string "Telefon",         :null => false
    t.string "Email",           :null => false
  end

  create_table "uzytkownicy", :force => true do |t|
    t.string  "Login", :null => false
    t.string  "Haslo", :null => false
    t.integer "Typ",   :null => false
  end

  create_table "zamowienia", :force => true do |t|
    t.integer "uzytkownik_id",                     :null => false
    t.integer "lek_id",                            :null => false
    t.integer "Ilosc",                             :null => false
    t.boolean "CzyWyslane",     :default => false, :null => false
    t.date    "DataZamowienia",                    :null => false
    t.date    "DataRealizacji"
  end

  add_index "zamowienia", ["lek_id"], :name => "fk_zamowienia_leki"
  add_index "zamowienia", ["uzytkownik_id"], :name => "fk_zamowienia_uzytkownicy"

  create_table "zamowienia_pracownicy", :id => false, :force => true do |t|
    t.integer "zamowienie_id", :null => false
    t.integer "uzytkownik_id", :null => false
  end

  add_index "zamowienia_pracownicy", ["uzytkownik_id"], :name => "fk_zamowienia_pracownicy_uzytkownicy"
  add_index "zamowienia_pracownicy", ["zamowienie_id", "uzytkownik_id"], :name => "index_zamowienia_pracownicy_on_zamowienie_id_and_uzytkownik_id", :unique => true

end
