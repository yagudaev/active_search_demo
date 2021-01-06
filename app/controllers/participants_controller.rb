class ParticipantsController < InheritedResources::Base

  private

    def participant_params
      params.require(:participant).permit(:first_name, :last_name)
    end

end
