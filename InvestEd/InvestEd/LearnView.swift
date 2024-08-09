import SwiftUI

struct Stock: Identifiable {
    let id = UUID()
    let symbol: String
    let name: String
    var price: Double
    var quantity: Int = 0
    var priceChange: Double = 0.0
}

class StockMarket: ObservableObject {
    @Published var stocks: [Stock] = [
        Stock(symbol: "AAPL", name: "Apple Inc.", price: 150.0),
        Stock(symbol: "GOOG", name: "Alphabet Inc.", price: 250.0),
        Stock(symbol: "MSFT", name: "Microsoft Corporation", price: 300.0),
    ]

    @Published var funds: Double = 2500.0
    @Published var year: Int = 1

    var timer: Timer?
    var yearCounter: Int = 1

    init() {
        startUpdatingStockPrices()
    }

    func startUpdatingStockPrices() {
        timer = Timer.scheduledTimer(withTimeInterval: 10.0, repeats: true) { _ in
            self.updateStockPrices()
            self.advanceYearIfNeeded()
        }
    }

    func stopUpdatingStockPrices() {
        timer?.invalidate()
        timer = nil
    }

    func updateStockPrices() {
        for index in 0..<stocks.count {
            let randomChange = Double.random(in: -10.0...15.0)
            let priceChange = randomChange * (stocks[index].price > 0 ? 0.8 : 1.2)
            stocks[index].price += priceChange
            stocks[index].priceChange = priceChange
        }
    }

    func advanceYearIfNeeded() {
        yearCounter += 1
        if yearCounter > 10 {
            yearCounter = 1
            year += 1
        }
        if year > 20 {
            stopUpdatingStockPrices()
        }
    }

    func buyStock(_ stock: Stock, quantity: Int) {
        guard let index = stocks.firstIndex(where: { $0.id == stock.id }) else { return }
        let totalPrice = stock.price * Double(quantity)
        if totalPrice <= funds {
            stocks[index].quantity += quantity
            funds -= totalPrice
        }
    }

    func sellStock(_ stock: Stock, quantity: Int) {
        guard let index = stocks.firstIndex(where: { $0.id == stock.id }) else { return }
        let availableQuantity = stocks[index].quantity

        if quantity <= availableQuantity {
            let totalPrice = stock.price * Double(quantity)
            stocks[index].quantity -= quantity
            funds += totalPrice
        }
    }

    func calculateProfit() -> Double {
        var profit = 0.0
        for stock in stocks {
            let stockValue = stock.price * Double(stock.quantity)
            profit += stockValue
        }
        let totalSpentFunds = 2500.0 - funds // Assuming initial funds are 2500.0
        profit -= totalSpentFunds
        return profit
    }
}

struct LearnView: View {
    @StateObject var stockMarket = StockMarket()
    @State private var buyQuantity: Int = 0
    @State private var sellQuantity: Int = 0

    var body: some View {
        NavigationView {
            VStack {
                Text("Year: \(stockMarket.year)")
                    .font(.headline)
                    .padding()

                List(stockMarket.stocks) { stock in
                    VStack(alignment: .leading) {
                        Text(stock.symbol)
                            .font(.headline)
                        Text(stock.name)
                            .font(.subheadline)
                        Text("$\(stock.price, specifier: "%.2f")")
                            .foregroundColor(stock.price > 0 ? .green : .red)
                        Text("Change: \(stock.priceChange, specifier: "%.2f")")
                            .font(.caption)

                        HStack {
                            Button(action: {
                                stockMarket.buyStock(stock, quantity: buyQuantity)
                                buyQuantity = 0 // Reset the buy quantity
                            }) {
                                Text("Buy")
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                            .disabled(stock.price > stockMarket.funds)

                            Stepper(value: $buyQuantity, in: 0...Int.max, label: {
                                Text("Quantity: \(buyQuantity)")
                            })
                        }

                        HStack {
                            Button(action: {
                                stockMarket.sellStock(stock, quantity: sellQuantity)
                                sellQuantity = 0 // Reset the sell quantity
                            }) {
                                Text("Sell")
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(Color.red)
                                    .cornerRadius(8)
                            }
                            .disabled(stock.quantity <= 0)

                            Stepper(value: $sellQuantity, in: 0...stock.quantity, label: {
                                Text("Quantity: \(sellQuantity)")
                            })
                        }
                    }
                }
                .navigationTitle("Stock Market")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            stockMarket.updateStockPrices()
                        }) {
                            Image(systemName: "arrow.clockwise")
                        }
                    }
                }

                VStack {
                    Spacer()
                    Text("Total Profit/Loss: $\(stockMarket.calculateProfit(), specifier: "%.2f")")
                        .font(.headline)
                        .padding()
                    Text("Funds: $\(stockMarket.funds, specifier: "%.2f")")
                        .font(.subheadline)
                        .padding()
                }
            }
            .onAppear {
                stockMarket.startUpdatingStockPrices()
            }
            .onDisappear {
                stockMarket.stopUpdatingStockPrices()
            }
        }
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}


