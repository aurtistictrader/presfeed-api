class ApplicationController < ActionController::API

  def parse_request
    @json = JSON.parse(request.body.read)
  end
end
