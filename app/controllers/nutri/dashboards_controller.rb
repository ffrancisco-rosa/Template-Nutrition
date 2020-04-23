module Nutri
  class DashboardsController < ApplicationController
    def dashboard
      @customers = Customer.all
      @work_locations = WorkLocation.all
      authorize [:nutri, :dashboard]
    end
  end
end
