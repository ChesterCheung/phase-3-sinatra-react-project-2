class Investor < ActiveRecord::Base
    has_many :stock_transactions
end