require_relative  '../../service/reqresin'
require 'jsonpath'

reqres = Reqresin.new

When('user send GET User request') do
    @response = reqres.get_user
end

When('user send POST login request') do
    @response = reqres.post_login
end
  
Then('user should get API response {int}') do |res|
    expect(@response.code).to eq res
end

Then('response should have {string} matching {string}') do |json_path, value|
    # result is an array
    results = JsonPath.new(json_path).on(@response).to_a.map(&:to_s)
    expect(results).to include value
end