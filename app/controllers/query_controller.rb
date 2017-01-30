class QueryController < ApplicationController
  def index
  end

  def result
     params["number"] = Event.where(organization: params["organization"]["id"]).size  unless number_or_nil(params["number"])
  if !params["hostname"].empty?
    @revents = Event.where(organization: params["organization"]["id"], hostname: params["hostname"]).order(timestamp: :desc).limit(params["number"])
 else
   @revents = Event.where(organization: params["organization"]["id"]).order(timestamp: :desc).limit(params["number"])
  end

  end


 private

  def number_or_nil(str)
        Integer(str)
  rescue
         nil
  end

  def query_params
      params.permit(:number, :organization_id, :hostname)
  end

end
