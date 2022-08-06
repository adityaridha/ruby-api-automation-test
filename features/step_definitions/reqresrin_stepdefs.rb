require_relative  '../../service/reqresin'

reqres = Reqresin.new

Given('user send GET User Request') do
    @response = reqres.get_user
end
  
Then('user should get response {int} OK') do |res|
    expect(@response.code).to eq res
end