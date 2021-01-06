class TitlesController < InheritedResources::Base

  private

    def title_params
      params.require(:title).permit(:name, :type, :director_id, :release_year, :rating, :duration_in_minutes, :duration_seasons, :description)
    end

end
