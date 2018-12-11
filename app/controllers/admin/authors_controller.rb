module Admin
  class AuthorsController < Admin::ApplicationController
    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(param)
      Author.find_by!(slug: param)
    end
  end
end
