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

ActiveRecord::Schema.define(:version => 20110410140647) do

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

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

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
