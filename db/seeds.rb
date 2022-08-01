puts "🌱 Seeding spices..."


investor1 = Investor.create(name: "Meow")
investor2 = Investor.create(name: "Chester")

transaction1 = StockTransaction.create(company_name: "TSLA", price: 600, date: "1/1/22" , investor_id: investor1.id )

puts "✅ Done seeding!"

