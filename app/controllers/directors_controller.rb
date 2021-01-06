class DirectorsController < InheritedResources::Base

  private

    def director_params
      params.require(:director).permit(:first_name, :last_name)
    end

end
