# frozen_string_literal: true

require 'httparty'

class Reqresin
  @@response = ''

  def get_user
    HTTParty.get('https://reqres.in/api/users/2')
  end

  def post_login
    body = {
      "email": 'eve.holt@reqres.in',
      "password": 'cityslicka'
    }

    HTTParty.post('https://reqres.in/api/login', body: body)
  end
end
