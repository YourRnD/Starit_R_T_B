require 'rails_helper'

describe "API Customers", type: :request do
  
  describe "GET /customers" do
    it "return all customers" do
      FactoryBot.create(:customer, name: "yuriy", email: "karamalesa@gmail.com", tel: "0508154217")
      FactoryBot.create(:customer, name: "katya", email: "karty@gmail.com", tel: "0508154568")
  
      get '/api/v1/customers'
  
      expect(response).to  have_http_status(:success)
      expect(JSON.parse(response.body).size).to  eq(2)
    end
  end

  describe "POST /customers" do
    it "create a new customer" do
      expect{
        post '/api/v1/customers', params: {customer: {name: "yuriy", email: "karamalesa@gmail.com", tel: "+380508154217"}}
      }.to  change {Customer.count}.from(0).to(1)
      
      expect(response).to  have_http_status(:created)
    end 
  end
  
  
  
end
