class DeviseCreateKlients < ActiveRecord::Migration
  def self.up
    create_table(:klients) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :klients, :email,                :unique => true
    add_index :klients, :reset_password_token, :unique => true
    # add_index :klients, :confirmation_token,   :unique => true
    # add_index :klients, :unlock_token,         :unique => true
    # add_index :klients, :authentication_token, :unique => true
  end

  def self.down
    drop_table :klients
  end
end
