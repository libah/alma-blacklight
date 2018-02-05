class Card::RequestsController < ApplicationController
	include Alma

	def index
  	@requests = Alma.get("/users/#{current_user.uid}/requests")
  end	

  def new
		@bib = Alma.get("/bibs/#{params[:mms_id]}?view=brief")
		@libraries = Alma.get("/conf/libraries")['library'].map{ | x | [ x['name'], x['code'] ]}.sort
  end

  def create
    url = "/bibs/#{params[:mms_id]}"
    if !params[:item_id].blank?
      url += "/holdings/#{params[:holding_id]}/items/#{params[:item_id]}"
    end 
  	begin
	  	Alma.post url + "/requests?user_id=#{current_user.uid}",
        params.slice(:request_type, :pickup_location_type, 
          :pickup_location_library, :comment)
			redirect_to requests_path, notice: "Your request was successfully created."
    rescue RestClient::BadRequest => e
    	msg = JSON.parse(e.response.body)['errorList']['error'][0]["errorMessage"]
    	redirect_to requests_path, alert: msg
    end	
  end

  def destroy
  	Alma.delete("/users/#{current_user.uid}/requests/#{params['id']}")
  	redirect_to requests_path, notice: "Your request was successfully cancelled."
  end
end