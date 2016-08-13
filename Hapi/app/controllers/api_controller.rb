class ApiController < ApplicationController

  def new
    new_ihealth
    @output = {}
    @output[:bp_data_list] = @i_health.bp_data_list
    @output[:bp_unit] = @i_health.bp_unit
    render json: @output
  end

  def new_ihealth
    @i_health = Ihealth.new
    @i_health.send_api_request
    @i_health.parse
  end

end
