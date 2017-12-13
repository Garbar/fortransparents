module Admin
  class VideosController < Admin::ApplicationController

    def find_resource(param)
      Video.find_by!(slug: param)
    end
  end
end
