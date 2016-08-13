class ApiController < ApplicationController

  def new
    @output = {}
    @output[:bp] = @i_health.bp_data_list
  end

  def new_ihealth
    @i_health = Ihealth.new
    @i_heath.send_api_request
    @i_health.parse
  end

end
