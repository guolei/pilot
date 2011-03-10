class SessionsController < ApplicationController
  def new
    callback = AppConfig["callback"][Rails.env].gsub(":sn", params[:sn])
    uri = URI.parse(FacebookAccount::API.authorize_url)
    uri.query = {:client_id => FacebookAccount::API.client_id, :redirect_uri => callback,
      :scope => "offline_access,publish_stream"}.to_param  #offline_access
    redirect_to uri.to_s
  end

  def auth
    if params[:error_reason].present?
      redirect_to(:root, :notice => "Unable to activate facebook: #{params[:error_reason]}")
    elsif params[:code].present?
#      card = Card.find_by_sn(params[:id])
#      card.user = FacebookAccount::API.create if card.user.blank?
#      card.user.validate_token(params[:code])
      redirect_to('/')
    end
  end
end
