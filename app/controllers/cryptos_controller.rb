class CryptosController < ApplicationController

  def index
    response = HTTP.auth("2NhODe0QtBpAdGytZEuh8h4M7eukZpAP3a9").get("https://www.worldcoinindex.com/apiservice/json?key=2NhODe0QtBpAdGytZEuh8h4M7eukZpAP3a9").parse(:json)["Markets"]
    render json: response[0..10]
  end

end
