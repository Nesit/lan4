class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.integer :message_id
      t.integer :sms_id
      t.string :phone
      t.text :mes
      t.string :phone_to
      t.datetime :sent
      t.datetime :recieved
      t.string :md5
      t.string :sha1
      t.string :crc32

      t.timestamps
    end
  end
end
