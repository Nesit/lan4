class MessagesController < ApplicationController
  def create
    sms = Sms.new message_id: params[:id],
                  sms_id:     params[:sms_id],
                  phone:      params[:phone],
                  mes:        params[:mes],
                  phone_to:   params[:to],
                  sent:       Time.at(params[:sent].to_f).to_datetime,
                  recieved:   Time.at(params[:time].to_f).to_datetime,
                  md5:        params[:md5],
                  sha1:       params[:sha1],
                  crc32:      params[:crc32]
    sms.save
    puts 'nya'
  end
end
