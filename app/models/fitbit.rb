class Fitbit < ApplicationRecord
	def send_api_request
		headers = {"Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNzkyNVAiLCJhdWQiOiIyMjhWN0QiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd3BybyB3bnV0IHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDcxMjEzNjM5LCJpYXQiOjE0NzExODQ4Mzl9.SyaczQwypBTggZqjH6oblaCKCZmO_izRXBLtK4NXIjk"}
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
	def send_api_request_hr
		headers = {"Authorization" => "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyNzkyNVAiLCJhdWQiOiIyMjhWN0QiLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd3BybyB3bnV0IHdzbGUgd3dlaSB3c29jIHdhY3Qgd3NldCB3bG9jIiwiZXhwIjoxNDcxMjEzNjM5LCJpYXQiOjE0NzExODQ4Mzl9.SyaczQwypBTggZqjH6oblaCKCZmO_izRXBLtK4NXIjk"}
		@response = HTTParty.get('https://api.fitbit.com/1/user/-/activities/heart/date/2016-08-06/2016-08-12/1min.json', headers: headers).response.body
	end
	def parse_hr
		@parsed_response = (JSON.parse @response)['activities-heart']
	end
	def arrayify_hr
		my_array = []
		@parsed_response.each do |x|
			my_hash = {}
			my_hash['date'] = x['dateTime']
			my_hash['heart_rate'] = x['value']['restingHeartRate']
			my_array << my_hash
		end
		my_array
	end
end
