module Api
  module Users
    class BookingsController < BaseController
      def index
        @bookings = @user.bookings
      end
    end
  end
end
