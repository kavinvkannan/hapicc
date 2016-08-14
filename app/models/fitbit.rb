class Fitbit < ApplicationRecord
	def send_api_request
		headers = {"Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI0U01WS04iLCJhdWQiOiIyMjhWN0QiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd3BybyB3bnV0IHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDcxMTU4NTMwLCJpYXQiOjE0NzExMjk3MzB9.rfSQFQZmKSehmScSYUxcERxCrXXWubNKMUFdLGl-dKk"}
		@response = HTTParty.get('https://api.fitbit.com/1/user/-/profile.json', headers: headers).response.body
	end

	def parse
		@parsed_response = (JSON.parse @response)['user']
	end

	def age
		@parsed_response['age']
	end
end
