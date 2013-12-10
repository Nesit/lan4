# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sm, :class => 'Sms' do
    message_id 1
    sms_id 1
    phone "MyString"
    mes "MyText"
    phone_to "MyString"
    sent "2013-12-09 12:08:22"
    recieved "2013-12-09 12:08:22"
    md5 "MyString"
    sha1 "MyString"
    crc32 "MyString"
  end
end
