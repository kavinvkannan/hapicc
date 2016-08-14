class Fitbit < ApplicationRecord
	def send_api_request
		headers = {"Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNzkyNVAiLCJhdWQiOiIyMjhWN0QiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd3BybyB3bnV0IHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDcxMTg4MjMxLCJpYXQiOjE0NzExNTk0MzF9.m1aJ_CciOgOwYu82xyoUSEbcQtXzYA7ekAMvNdXB2HQ"}
		@response = HTTParty.get('https://api.fitbit.com/1/user/-/profile.json', headers: headers).response.body
	end

	def parse
		@parsed_response = (JSON.parse @response)['user']
	end

	def age
		@parsed_response['age']
	end

	def name
		@parsed_response['fullName']
	end
	def weight
		@parsed_response['weight']
	end
	def height
		@parsed_response['height']
	end
	def gender
		@parsed_response['gender']
	end
end
