class InvestorsController < ApplicationController

    get "/investors" do
    investors = Investor.all
    investors.to_json
    end

end