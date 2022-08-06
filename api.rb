# frozen_string_literal: true

require 'httparty'

describe 'Reqresin' do

  BASE_URL = 'https://reqres.in'

  it 'GET single user' do
    # Action
    response = HTTParty.get('https://reqres.in/api/users/2')
    bodyData = JSON.parse(response.body)

    # Validation
    expect(response.code).to eq 200
    expect(bodyData["data"]["email"]).to eq "janet.weaver@reqres.in"
  end

  it 'POST login' do
    # Precondition
    body = {
        "email": "eve.holt@reqres.in",
        "password": "cityslicka"
    }

    # Action
    response = HTTParty.post('https://reqres.in/api/login', body: body)
    bodyData = JSON.parse(response.body)

    # Validation
    expect(response.code).to eq 200
    expect(bodyData["token"]).to eq "QpwL5tke4Pnpja7X4"
  end

  it 'PUT user' do
    # Precondition
    body = {
        "name": "Muhammad Aditya",
        "job": "QA Engineer"
    }

    # Action
    response = HTTParty.put('https://reqres.in/api/users/2', body: body)
    bodyData = JSON.parse(response.body)

    # Validation
    expect(response.code).to eq 200
    expect(bodyData["job"]).to eq "QA Engineer"
  end

  it 'DELETE user' do
    # Action
    response = HTTParty.delete('https://reqres.in/api/users/2')

    # Validation
    expect(response.code).to eq 204
  end

  
end