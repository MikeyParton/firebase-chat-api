module Api
  module Users
    class BaseController < ApplicationController
      before_action :find_user

      def find_user
        @user = User.find(params[:user_id])
      end
    end
  end
end
