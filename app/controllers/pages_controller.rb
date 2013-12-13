require 'smsc_lib'

class PagesController < ApplicationController
  layout :layout

  def show
    @page = Page.find_by_slug(params[:slug]) || Page.find(params[:slug])
    render params[:slug] if controller_view_exists?(params[:slug])
  end

  def send_sms
    phone_number = params[:phone_number]
    result = if phone_number
      #puts phone_number
      sms = SMSC.new()
      sms.send_sms(phone_number, "Ваш пароль: 123", 0)
    else
      {}
    end
  end

  private

  def view_exists?(view)
    File.exists? Rails.root.join("app", "views", view)
  end

  def controller_view_exists?(name)
    view_exists?("#{params[:controller]}/#{name}.html.erb")
  end

  def layout_exists?(name)
    view_exists?("layouts/#{name}.html.erb")
  end

  def layout
    main_layout = 'application'
    if @page && @page.layout != main_layout && layout_exists?(@page.layout)
      @page.layout
    else
      main_layout
    end
  end

end
