class MessagesController < ApplicationController
  def create
    sms = Sms.new message_id: params[:id],
                  sms_id:     params[:sms_id],
                  phone:      params[:phone],
                  mes:        params[:mes],
                  phone_to:   params[:to],
                  sent:       params[:sent],
                  recieved:   params[:time],
                  md5:        params[:md5],
                  sha1:       params[:sha1],
                  crc32:      params[:crc32]
    sms.save
    puts 'nya'
  end
end
