class SessionsController < ApplicationController
    def new
        puts remote_ip
        @trips = TripInfo.all
    end
end
