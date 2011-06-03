class DropUsersKlientsPracowniks < ActiveRecord::Migration
  def self.up
    drop_table :users
    drop_table :pracowniks
    drop_table :klients
  end

  def self.down
    #teoretycznie powinien byc tutaj kod tworzacy te tabele, ale.. who cares.
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.encryptable
      t.confirmable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.token_authenticatable


      t.timestamps
    end
    create_table(:klients) do |t|
    end
    create_table(:pracowniks) do |t|
    end
  end
end
