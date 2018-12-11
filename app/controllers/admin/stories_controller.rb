module Admin
  class StoriesController < Admin::ApplicationController
    
    def find_resource(param)
      Story.find_by!(slug: param)
    end
  end
end
