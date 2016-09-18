require_dependency "timecop_web/application_controller"

module TimecopWeb
  class MainController < ApplicationController
    def index
    end

    def travel
      case params[:commit]
      when "travel" then Timecop.travel(move_at)
      when "freeze" then Timecop.freeze(move_at)
      else Timecop.return
      end

      redirect_to root_path
    end

    private

    def move_at
      @more_at ||= begin
        Time.zone.parse %(#{travel_params["m(1i)"]}-#{travel_params["m(2i)"]}-#{travel_params["m(3i)"]} #{travel_params["m(4i)"]}:#{travel_params["m(5i)"]})
      end
    end

    def travel_params
      params.require(:travel).permit(:"m(1i)", :"m(2i)", :"m(3i)", :"m(4i)", :"m(5i)")
    end
  end
end
