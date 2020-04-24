module Nutri
  class PagesController < ApplicationController
    def home
      @customers = Customer.all
      @work_locations = WorkLocation.all
      authorize [:nutri, :page]
    end
  end
end
