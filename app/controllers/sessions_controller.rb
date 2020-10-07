class SessionsController < ApplicationController
    helper_method :display_greeting

    def new
        # byebug
        # @current_user = current_user
    end

    def create
        session[:name] = params[:name] if params[:name].present? 
        if !current_user
            redirect_to '/'
        end
    end

    def destroy
        if current_user != nil
            session.clear
        end
    end

end