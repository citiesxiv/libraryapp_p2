class HistoryController < ApplicationController
  def create
   @history = History.new(history_params)
  end
    
    
    
    
    
  private
    def history_params
      params.require(:history).permit(:bookid,:email,:chkDate,:returnedOn,:copy)
    end
        
end