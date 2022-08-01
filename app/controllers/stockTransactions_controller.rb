class StockTransactionsController < ApplicationController

   get "/stocktransactions" do
      transactions = StockTransaction.all
      transactions.to_json
   end

   get "/stocktransactions/:id" do
      transaction = StockTransaction.find(params[:id])
      transaction.to_json
   end

   post "/stocktransactions" do 
      newTransaction = StockTransaction.create(
         company_name: params[:company_name],
         price: params[:price], 
         date: params[:date],
         investor_id: params[:investor_id]
      )
      newTransaction.to_json
   end

   delete "/stocktransactions/:id" do 
      transaction = StockTransaction.find(params[:id])
      transaction.destroy
      transaction.to_json
   end

   patch "/stocktransactions/:id" do 
      edit = StockTransaction.find(params[:id])
      edit.update(price: params[:price])
      edit.to_json
   end

end