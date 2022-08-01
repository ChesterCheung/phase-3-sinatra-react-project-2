class StockTransactionsController < ApplicationController

   get "/stocktransactions" do
      transactions = StockTransaction.all
      transactions.to_json
   end

   post "/stocktransactions" do 
      StockTransaction.create(
         company_name: params[:company_name],
         price: params[:price], 
         date: params[:date],
         investor_id: params[:investor_id]
      )
   end

   delete "stocktransactions/"
   
   post "/stocktransactions" do 
      StockTransaction.create(
         company_name: params[:company_name],
         price: params[:price], 
         date: params[:date],
         investor_id: params[:investor_id]
      )
   end


end

t.string "company_name"
    t.integer "price"
    t.string "date"
    t.integer "investor_id"