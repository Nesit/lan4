class Sms < ActiveRecord::Base
  attr_accessible :crc32, :md5, :mes, :message_id, :phone, :phone_to, :recieved, :sent, :sha1, :sms_id
end
