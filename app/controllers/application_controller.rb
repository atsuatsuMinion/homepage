class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        matches_path
    end
    
    def after_sign_out_path_for(resource)
        homes_top_path
    end
end
