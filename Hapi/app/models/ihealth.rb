class Ihealth < ApplicationRecord

# BP api
  def send_api_request_bp
    @response_bp = HTTParty.get('http://sandboxapi.ihealthlabs.com/openapiv2/user/8cdfc1cdc1354d17a379acf29218d9f5/bp.json/?client_id=622ea3bcf1ba47979551a432c72f877e&client_secret=b93af2fa6f2a4325b943de508934ec8a&redirect_uri=http://www.carecloud.com&access_token=qDzubKsf-yd8R3PfhgHPKCQnUGOqZM-fj7g9puwIjCZriwDP-4Eu0hGs4BTF3w2WVmbioxjJ7HoAGuBKFMLXAgH8003ljItbmoY2DrK8eDz*yq7yjAhuUGuGLvZg2U2WtFKNhoulbgWWMyNmoDmgi4Kprje93P04N3z74qVqiK4&start_time=1471006800&end_time=1471116022&page_index=1&sc=910DDFF4C3084FF7992951867B3FD756&sv=9D9C1AE9D3FF4B8684DD84406B97D368')
  end

  def parse_bp
    @parsed_response_bp = JSON.parse @response_bp
  end

  def bp_data_list
    @bp_data_list = @parsed_response_bp['BPDataList']
  end

  def bp_unit
    @bp_unit = @parsed_response_bp['BPUnit']
  end

# O2 api
  def send_api_request_bo
    @response_bo = HTTParty.get('http://sandboxapi.ihealthlabs.com/openapiv2/user/8cdfc1cdc1354d17a379acf29218d9f5/spo2.json/?client_id=622ea3bcf1ba47979551a432c72f877e&client_secret=b93af2fa6f2a4325b943de508934ec8a&access_token=qDzubKsf-yd8R3PfhgHPKCQnUGOqZM-fj7g9puwIjCZriwDP-4Eu0hGs4BTF3w2WVmbioxjJ7HoAGuBKFMLXAgH8003ljItbmoY2DrK8eDz*yq7yjAhuUGuGLvZg2U2WtFKNhoulbgWWMyNmoDmgi4Kprje93P04N3z74qVqiK4&start_time=1331554332&end_time=1405077726&page_index=1&sc=910DDFF4C3084FF7992951867B3FD756&sv=9D1561D439D7440E9AB0C4CC5D2BC926')
  end

  def parse_bo
    @parsed_response_bo = JSON.parse @response_bo
  end

  def bo_data_list
    @bo_data_list = @parsed_response_bo[:BODataList]
  end
end
