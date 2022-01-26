class LibraryController < ApplicationController

    def new
        @library = Library.new
    end

    def create
        @library = Library.new(library_params)
    end








    private
       def library_params
          params.require(:library).permit(:branchName,:address,:phoneNum)
       end
end
