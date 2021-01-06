class AppearancesController < InheritedResources::Base

  private

    def appearance_params
      params.require(:appearance).permit(:participant_id, :title_id, :role)
    end

end
