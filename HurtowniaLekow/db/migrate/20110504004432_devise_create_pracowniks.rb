class DeviseCreatePracowniks < ActiveRecord::Migration
  def self.up
    create_table(:pracowniks) do |t|
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

    add_index :pracowniks, :email,                :unique => true
    add_index :pracowniks, :reset_password_token, :unique => true
    # add_index :pracowniks, :confirmation_token,   :unique => true
    # add_index :pracowniks, :unlock_token,         :unique => true
    # add_index :pracowniks, :authentication_token, :unique => true
  end

  def self.down
    drop_table :pracowniks
  end
end
