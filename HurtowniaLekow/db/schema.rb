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

ActiveRecord::Schema.define(:version => 20110504122249) do

  create_table "dostawy", :force => true do |t|
    t.integer "lek_id",         :null => false
    t.integer "Ilosc",          :null => false
    t.integer "CenaDostawy",    :null => false
    t.date    "DataZamowienia", :null => false
    t.date    "DataRealizacji"
  end

  create_table "klients", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "NazwaKlienta"
    t.string   "KodPocztowy"
    t.string   "Adres"
    t.string   "NIP"
    t.string   "REGON"
    t.string   "Telefon"
  end

  add_index "klients", ["NazwaKlienta"], :name => "index_klients_on_NazwaKlienta", :unique => true
  add_index "klients", ["email"], :name => "index_klients_on_email", :unique => true
  add_index "klients", ["reset_password_token"], :name => "index_klients_on_reset_password_token", :unique => true

  create_table "leks", :force => true do |t|
    t.string  "NazwaLeku",    :null => false
    t.integer "producent_id", :null => false
    t.integer "Cena",         :null => false
    t.integer "Ilosc",        :null => false
    t.string  "Uwagi"
  end

  create_table "pracowniks", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Nazwisko"
    t.string   "Imie"
    t.string   "Miasto"
    t.string   "KodPocztowy"
    t.string   "Adres"
    t.date     "DataZatrudnienia"
    t.date     "DataZwolnienia"
    t.string   "NIP"
    t.string   "Telefon"
    t.string   "type"
  end

  add_index "pracowniks", ["email"], :name => "index_pracowniks_on_email", :unique => true
  add_index "pracowniks", ["reset_password_token"], :name => "index_pracowniks_on_reset_password_token", :unique => true

  create_table "producents", :force => true do |t|
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

  create_table "zamowienia_pracownicy", :id => false, :force => true do |t|
    t.integer "zamowienie_id", :null => false
    t.integer "uzytkownik_id", :null => false
  end

  add_index "zamowienia_pracownicy", ["zamowienie_id", "uzytkownik_id"], :name => "index_zamowienia_pracownicy_on_zamowienie_id_and_uzytkownik_id", :unique => true

end
