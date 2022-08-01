class InvestorsController < ApplicationController

    get "/investors" do
    investors = Investor.all
    investors.to_json
    end

    get "/investors/:id" do
    investors = Investor.find(params[:id])
    investors.to_json
    end



end