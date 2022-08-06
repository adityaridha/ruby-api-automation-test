require_relative  '../../service/reqresin'

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