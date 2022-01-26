class Request < ApplicationController
    def create
      @request = Request.new(request_params)
    end
  
  
  
  
  
    private
      def request_params
        params.require(:request).permit(:email,:libName)
      end
    
  
  end