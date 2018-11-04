class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        if resource.is_a?(User)
            user_path(current_user.id)
        end
    end
end
