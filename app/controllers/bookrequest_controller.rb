class Bookrequest < ApplicationController
    def create
      @request = Bookrequest.new(request_params)
    end
  
  
  
  
  
    private
      def request_params
        params.require(:bookrequest).permit(:email,:libName)
      end
    
  
  end