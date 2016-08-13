class ApiController < ApplicationController

  def new
    new_ihealth_bp
    new_ihealth_bo
    @output = {}
    @output[:bp_data_list] = @i_health_bp.bp_data_list
    @output[:bp_unit] = @i_health_bp.bp_unit
    @output[:bo_data_list] = @i_health_bo.bo_data_list
    render json: @output
  end

  def new_ihealth_bp
    @i_health_bp = Ihealth.new
    @i_health_bp.send_api_request_bp
    @i_health_bp.parse_bp
  end

  def new_ihealth_bo
    @i_health_bo = Ihealth.new
    @i_health_bo.send_api_request_bo
    @i_health_bo.parse_bo
  end

end
