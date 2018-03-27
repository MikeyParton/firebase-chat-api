module Api
  module Users
    class BookingsController < BaseController
      def index
        @bookings = @user.bookings + @user.business_bookings
      end
    end
  end
end
