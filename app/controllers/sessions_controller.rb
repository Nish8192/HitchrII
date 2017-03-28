class SessionsController < ApplicationController
    def new
        @trips = TripInfo.all
    end
end
