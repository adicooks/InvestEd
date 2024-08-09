import SwiftUI

struct LevelView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Level 1: The Basics")) {
                    NavigationLink(destination: TopicDetailView(topic: .investingBasics)) {
                        LevelCircleView(level: 1, circle: 1, title: "Investing Basics")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .personalFinancialGoals)) {
                        LevelCircleView(level: 1, circle: 2, title: "Personal Financial Goals")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .timeValueOfMoney)) {
                        LevelCircleView(level: 1, circle: 3, title: "Time Value of Money")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .riskToleranceTimeHorizon)) {
                        LevelCircleView(level: 1, circle: 4, title: "Risk Tolerance and Time Horizon")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .importantTerms)) {
                        LevelCircleView(level: 1, circle: 5, title: "Important Terms")
                    }
                }
                
                Section(header: Text("Level 2: Stocks")) {
                    NavigationLink(destination: TopicDetailView(topic: .whatAreStocks)) {
                        LevelCircleView(level: 2, circle: 6, title: "What are Stocks?")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .shareholderOwnership)) {
                        LevelCircleView(level: 2, circle: 7, title: "Shareholder Ownership")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .commonVsPreferredStock)) {
                        LevelCircleView(level: 2, circle: 8, title: "Common vs Preferred Stock")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .buyingVsShorting)) {
                        LevelCircleView(level: 2, circle: 9, title: "Shorting Stocks")
                    }
                }
                
                Section(header: Text("Level 3: Fixed Income Investments")) {
                    NavigationLink(destination: TopicDetailView(topic: .fixedIncome)) {
                        LevelCircleView(level: 3, circle: 10, title: "Fixed Income Investments")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .bonds)) {
                        LevelCircleView(level: 3, circle: 11, title: "What are Bonds?")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .bondWorks)) {
                        LevelCircleView(level: 3, circle: 12, title: "How do Bonds work?")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .bondCharacteristics)) {
                        LevelCircleView(level: 3, circle: 13, title: "Bond Characteristics")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .bondTypes)) {
                        LevelCircleView(level: 3, circle: 14, title: "Types of Bonds")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .bondPricing)) {
                        LevelCircleView(level: 3, circle: 15, title: "Bond Pricing")
                    }
                }
                
                Section(header: Text("Level 4: Mutual Funds and ETFs")) {
                    NavigationLink(destination: TopicDetailView(topic: .mutualFunds)) {
                        LevelCircleView(level: 4, circle: 16, title: "Mutual Funds")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .pricingMutual)) {
                        LevelCircleView(level: 4, circle: 17, title: "Pricing Mutual Funds")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .mutualReturns)) {
                        LevelCircleView(level: 4, circle: 18, title: "How are Mutual Funds Returns Calculated?")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .mutualTypes)) {
                        LevelCircleView(level: 4, circle: 19, title: "Types of Mutual Funds")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .mutualFees)) {
                        LevelCircleView(level: 4, circle: 20, title: "Mutual Fund Fees and Classes of Shares")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .ETFs)) {
                        LevelCircleView(level: 4, circle: 21, title: "Exchange-Traded Funds (ETFs)")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .etfTypes)) {
                        LevelCircleView(level: 4, circle: 22, title: "Types of ETFs")
                    }
                }
                
                Section(header: Text("Level 5: Options")) {
                    NavigationLink(destination: TopicDetailView(topic: .options)) {
                        LevelCircleView(level: 5, circle: 23, title: "Options")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .special)) {
                        LevelCircleView(level: 5, circle: 24, title: "Special Considerations")
                    }
                    NavigationLink(destination: LearnView()) {
                        LevelCircleView(level: 5, circle: 25, title: "Cumulative Game")
                    }
                }
                Section(header: Text("Level 6: Alternative Investments")) {
                    NavigationLink(destination: TopicDetailView(topic: .alternative)) {
                        LevelCircleView(level: 5, circle: 26, title: "What are Alternative Investments?")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .cryptocurrency)) {
                        LevelCircleView(level: 5, circle: 27, title: "Cryptocurrency")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .realEstate)) {
                        LevelCircleView(level: 5, circle: 28, title: "Real Estate")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .privateEquities)) {
                        LevelCircleView(level: 5, circle: 29, title: "Private equities and Hedge Funds")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .venture)) {
                        LevelCircleView(level: 5, circle: 30, title: "Venture Capital")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .commodities)) {
                        LevelCircleView(level: 5, circle: 31, title: "Commodities")
                    }
                }
                Section(header: Text("Level 7: Global Investing and Emerging Markets")) {
                    NavigationLink(destination: TopicDetailView(topic: .international)) {
                        LevelCircleView(level: 5, circle: 32, title: "Global Diversification")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .currencyRates)) {
                        LevelCircleView(level: 5, circle: 33, title: "Exchange Rates & Geopolitical Risks")
                    }
                    NavigationLink(destination: TopicDetailView(topic: .emerging)) {
                        LevelCircleView(level: 5, circle: 34, title: "Emerging Markets")
                    }
                }
                Section(header: Text("Level 8: Retirement Accounts")) {
                    NavigationLink(destination: TopicDetailView(topic: .rothIRA)) {
                        LevelCircleView(level: 5, circle: 35, title: "401(k) vs Roth IRA")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("InvestEd - Learn")
        }
        .tabItem {
            Label("Learn", systemImage: "books.vertical.fill")
        }
    }
}

struct LevelCircleView: View {
    let level: Int
    let circle: Int
    let title: String
    @State private var isCompleted = false
    @State private var isTapped = false
    
    var body: some View {
        HStack {
            Group {
                if isCompleted {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                } else {
                    Circle()
                        .foregroundColor(isTapped ? .green : .blue)
                        .overlay(
                            Circle()
                                .stroke(Color.blue, lineWidth: isTapped ? 0 : 0)
                        )
                }
            }
            .frame(width: 40, height: 40)
            .overlay(
                Text("\(circle)")
                    .foregroundColor(.white)
                    .font(.headline)
            )
            
            Text(title)
                .font(.headline)
                .bold()
                .padding(.leading, 8)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding(.vertical, 8)
        .contentShape(Rectangle())
        .onTapGesture {
            isTapped.toggle()
        }
    }
}

struct TopicDetailView: View {
    let topic: Topic
    @State private var isCompleted = false
    @State private var showQuiz = false
    @State private var isCircleTapped = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text(topic.title)
                    .font(.title)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, -50)
                
                Text(topic.description)
                    .multilineTextAlignment(.leading)
                    .padding(.all, 16)
                    .frame(maxWidth: .infinity)
                
                NavigationLink(destination: TopicDetailView(topic: topic.nextTopic)) {
                    Text("Next Topic")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                if topic.hasQuiz {
                    Button(action: {
                        showQuiz = true
                    }) {
                        Text("Play Quiz")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                
                if showQuiz {
                    LQuizView(topic: topic, showQuiz: $showQuiz)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: EmptyView())
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}


struct LQuizView: View {
    let topic: Topic
    @Binding var showQuiz: Bool
    @State private var selectedAnswer: String = ""
    @State private var isCorrectAnswer: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text(topic.quizQuestion)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(topic.quizOptions, id: \.self) { option in
                        Button(action: {
                            selectedAnswer = option
                            isCorrectAnswer = selectedAnswer == topic.correctAnswer
                        }) {
                            Text(option)
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(isCorrectAnswer ? (selectedAnswer == option ? Color.green : Color.blue) : (selectedAnswer == option ? Color.red : Color.blue))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                
                if !selectedAnswer.isEmpty {
                    Text(isCorrectAnswer ? "Correct Answer!" : "Wrong Answer!")
                        .font(.headline)
                        .padding()
                        .foregroundColor(isCorrectAnswer ? .green : .red)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
        .navigationBarTitle("", displayMode: .inline)
    }
}

enum Topic {
    case investingBasics
    case personalFinancialGoals
    case timeValueOfMoney
    case riskToleranceTimeHorizon
    case importantTerms
    case whatAreStocks
    case shareholderOwnership
    case commonVsPreferredStock
    case buyingVsShorting
    case fixedIncome
    case bonds
    case bondWorks
    case bondCharacteristics
    case bondTypes
    case bondPricing
    case mutualFunds
    case pricingMutual
    case mutualReturns
    case mutualTypes
    case mutualFees
    case ETFs
    case etfTypes
    case options
    case special
    case game1
    case alternative
    case cryptocurrency
    case realEstate
    case privateEquities
    case venture
    case commodities
    case international
    case currencyRates
    case emerging
    case rothIRA
    
    var title: String {
        switch self {
        case .investingBasics:
            return "Investing Basics"
        case .personalFinancialGoals:
            return "Personal Financial Goals"
        case .timeValueOfMoney:
            return "Time Value of Money"
        case .riskToleranceTimeHorizon:
            return "Risk Tolerance and Time Horizon"
        case .importantTerms:
            return "Important Terms"
        case .whatAreStocks:
            return "What are Stocks?"
        case .shareholderOwnership:
            return "Shareholder Ownership"
        case .commonVsPreferredStock:
            return "Common vs Preferred Stock"
        case .buyingVsShorting:
            return "Shorting Stocks"
        case .fixedIncome:
            return "Fixed Income Investments"
        case .bonds:
            return "What are Bonds"
        case .bondWorks:
            return "How do Bonds work?"
        case .bondCharacteristics:
            return "Bond Characteristics"
        case .bondTypes:
            return "Types of Bonds"
        case .bondPricing:
            return "Bond Pricing"
        case .mutualFunds:
            return "Mutual Funds"
        case .pricingMutual:
            return "Pricing Mutual Funds"
        case .mutualReturns:
            return "How are Mutual Funds Returns Calculated?"
        case .mutualTypes:
            return "Types of Mutual Funds"
        case .mutualFees:
            return "Mutual Fund Fees and Classes of Shares"
        case .ETFs:
            return "Exchange-Traded Funds (ETFs)"
        case .etfTypes:
            return "Types of ETFs"
        case .options:
            return "Options"
        case .special:
            return "Special Considerations"
        case .game1:
            return "Play a Game"
        case .alternative:
            return "Alternative Investments"
        case .cryptocurrency:
            return "Cryptocurrency"
        case .realEstate:
            return "Real Estate"
        case .privateEquities:
            return "Private Equities and Hedge Funds"
        case .venture:
            return "Venture Capital"
        case .commodities:
            return "Commodities"
        case .international:
            return "Global Diversification"
        case .currencyRates:
            return "Exchange Rates & Geopolitical Risks"
        case .emerging:
            return "Emerging Markets"
        case .rothIRA:
            return "401(k) vs Roth IRA"
        }
    }
    
    var description: String {
        switch self {
        case .investingBasics:
            return "Investing is the act of putting your money to work in order to grow it over time. It's like planting seeds that will eventually sprout into fruitful trees. Investing is important because it allows you to build wealth and achieve your personal financial goals. Whether you want to save for a car, college, or retirement, investing can help you reach those milestones faster. So, start thinking about investing as a way to make your money work for you."
        case .personalFinancialGoals:
            return "As mentioned previously, setting personal financial goals is crucial when it comes to investing. By identifying what you want to achieve financially, you can create a roadmap for your investments. Think about your short-term and long-term goals, and consider factors like your desired lifestyle, expenses, and aspirations. Setting clear financial goals will help guide your investment decisions and keep you focused on what matters most to you. However, in order to do this, it’s important that we go over some important concepts."
        case .timeValueOfMoney:
            return "One of the most important concepts in investing is the time value of money concept. It means that money received now is more valuable than the same amount received later. When you invest money, it has the potential to grow over time due to factors like interest. If you don't invest money, its value diminishes over time. For instance, if you keep money under a mattress, you miss out on the additional money it could have earned through investments. Inflation also affects money's value. As prices increase, the purchasing power of a dollar decreases, so you can buy less than before. Therefore, it's better to have money today due to the opportunities and growth that come with investing, as well as the impact of inflation on purchasing power."
        case .riskToleranceTimeHorizon:
            return "Two more important concepts include risk tolerance and time horizon. Risk tolerance refers to your comfort level with taking on investment risks. Some people are willing to take more risks in pursuit of higher returns, while others prefer a more conservative approach. Understanding your risk tolerance will help you choose investment options that align with your comfort level. Additionally, your time horizon is the length of time you plan to invest before needing the money. Generally, the longer your time horizon, the more you can potentially benefit from higher-risk investments. Consider your financial goals and when you'll need the money to determine the appropriate investment strategy for your specific situation."
        case .importantTerms:
            return "1. Interest Rate: The cost of borrowing money or the return earned on an investment, expressed as a percentage of the amount borrowed or invested. It determines how much you will earn or owe over time. 2. Compound Interest: Earning interest on both the initial amount of money and the interest that has been previously earned. Over time, compound interest can significantly increase your investment value. 3. Inflation: The general increase in prices of goods and services over time. When inflation occurs, the purchasing power of money decreases, meaning that the same amount of money can buy fewer things."
        case .whatAreStocks:
            return "Congratulations on making it this far! Let’s now delve deeper into the world of investing by first exploring the fundamentals of stocks. Stocks, also known as equity, mean you own a portion of a company. It's like having a small part of their assets and profits. People can buy and sell stocks on special markets, called stock exchanges. Stocks help companies raise money, and if you own stocks, you might get a share of the company's assets and earnings based on how many stocks you have. When you buy a stock, you purchase a certain number of shares at the current share price. To make a profit, you sell the stock at a higher price than what you initially paid for each share. Let's say you bought one share of a company’s stock at $40. Due to recent optimism amongst investors, the share price rises to $50. You then decide to sell your single share of stock making a profit of $10."
        case .shareholderOwnership:
            return "Owning stock essentially means you own a part of the company's shares, not the actual company itself. This is called the separation of ownership and control. Owning shares gives you certain rights, like voting in meetings with other shareholders, getting a share of the profits called dividends, and selling your shares to someone else. If you own the majority of shares, you have more voting power, which means you can indirectly control the company by choosing who is on its board of directors. When one company buys another, it buys all of the shares. The board of directors, not regular shareholders, is responsible for hiring professional managers, like the CEO, to increase the company's value. As a shareholder, you get a part of the company's profits, and that's what makes a stock valuable. The more shares you have, the bigger your portion of the profits. Some stocks reinvest the profits to grow the company instead of giving dividends, but even then, these reinvested earnings still add value to the stock."
        case .commonVsPreferredStock:
            return "There are two main types of stocks: common and preferred. If you have common stock, you can vote at meetings and get dividends. Preferred stock doesn't let you vote, but if the company has problems and can't pay everyone, preferred stockholders get their money first. Sometimes, companies need more money, so they sell more stocks, which can make the people who already own stocks have less ownership and rights. But companies can also buy their own stocks, which can please the people who already own stocks because their stocks become worth more money."
        case .buyingVsShorting:
            return "In addition to buying and selling stocks, investors can also borrow stocks, sell them, and then buy them back. This is called short selling. Short selling is essentially a way for experienced traders and investors to make money when they think a stock's price will go down. They borrow shares of the stock and sell them to other people. If the price goes down, they can buy the shares back at a lower cost and make a profit. Essentially, it's the reverse of traditionally buying and selling a stock. However, there is a risk of losing money if the price goes up. People do this to make bets on prices going down or to protect themselves from losses. For example, if they borrow a share of a stock trading at $50, sell it, and then buy it back at $40, they make a profit of $10."
        case .fixedIncome:
            return "In this unit, we will discuss what fixed income investments are, how they work, and more. Fixed income investments are essentially a type of investment that gives people a set amount of money until a specific date. These investments, like government and corporate bonds, give a steady and predictable payment to the investors. Unlike stocks, which can change how much they pay, fixed income investments always give the same amount. People can buy these investments on their own or through funds. Companies and governments create these investments to get money for what they do. In exchange, investors get a fixed interest rate. Fixed income investments are good for people who want to be careful with their money and have a variety of investments."
        case .bonds:
            return "A bond is an example of a fixed income investment. Think of it as a special kind of IOU. Let's say a government needs money to build new schools or repair roads, but they don't have enough cash on hand. So, they issue bonds, which are like promises to repay the money with interest to the people who buy them. These people are the lenders. Similarly, companies might issue bonds to grow their business or invest in new projects. Bonds give individual investors the opportunity to be like the bank and lend money to these organizations. And just like you can sell your old video games to someone else, lenders can sell their bonds to other investors if they want to get their money back sooner or buy bonds from other people."
        case .bondWorks:
            return "When companies or organizations need money for projects or debts, they can borrow from investors by issuing bonds. Imagine you lend $1,000 to a company by buying a bond. The company promises to pay you back the $1,000 after a certain period, let's say 10 years. In the meantime, they will also pay you interest every year as a thank you for lending them the money. The interest is like a coupon, and it's a way for you to make money from the bond. The amount of interest you receive depends on the interest rate they promised when you bought the bond. Sometimes, the bond can be sold to someone else before the 10 years are up. The price of the bond can change based on things like how likely the company is to pay you back and how long until the bond is due. If interest rates go down or the company's credit improves, they may even buy back the bond from you and issue a new one at a lower cost."
        case .bondCharacteristics:
            return """
                    Some important characteristics of bonds are its:
                    - Face value: The amount the bond will be worth when it matures.
                    - Coupon rate: The interest rate the issuer pays to bondholders.
                    - Coupon dates: The dates when interest payments are made.
                    - Maturity date: The date when the bond matures and the issuer pays back the face value.
                    - Issue price: The price at which the bond is first sold.
                    
                    The bond's interest rate depends on two things:
                    - The issuer's credit rating: If it's low, the bond is riskier so it pays more interest.
                    - Time until maturity: Longer-term bonds usually pay higher interest because they have more risks.
                    
                    Credit rating agencies give ratings to companies and their bonds. The best ones are investment grade, while riskier bonds are called high yield or junk bonds. Bond values go up or down when interest rates change. This is called duration. It's not about time until maturity, but how the price changes with interest rate fluctuations. The rate of change of a bond's sensitivity to interest rates is called convexity.
                    """
        case .bondTypes:
            return """
                Types of bonds:
                Here are the main categories of bonds:
                
                1. Corporate bonds: Companies sell these instead of getting bank loans. They offer better terms and lower interest rates.
                
                2. Municipal bonds: States and cities sell these. Some give tax-free income to investors.
                
                3. Government bonds: The government sells these, like the U.S. Treasury. They have different names based on how long they last.
                
                4. Agency bonds: These are sold by organizations connected to the government.
                """
        case .bondPricing:
            return "Bonds work differently from stocks. Instead of buying shares in a company, bonds are valued based on fixed interest payments and whether the issuer can make the payments on time. You can trade bonds at three different prices: par (equal to the face value), premium (higher than face value), or discount (lower than face value). The price of a bond changes the amount of money you make from it, called the current yield. There are a few things that affect bond prices, like how much time is left until the bond matures, how good the issuer's credit is, and how many people want to buy or sell the bond. If bond prices are lower, they give you more money back and are more attractive to people who want to invest. The number of people who want to buy or sell bonds also affects the prices."
        case .mutualFunds:
            return "We will now begin our unit on mutual funds and ETFs, two additional investing tools that allow investors to diversify their portfolios. A mutual fund is a type of investment where many people pool their money together to buy stocks, bonds, and other assets. These funds are managed by professionals who try to make the investors earn money. The investments are chosen based on the fund's goals. When you invest in a mutual fund, you become a shareholder and share in the profits or losses. Mutual funds are often run by big companies like Fidelity and Vanguard, and the people managing the fund have to put the investors' interests first."
        case .pricingMutual:
            return "The price of a mutual fund share is called the net asset value (NAV) per share. It's figured out by dividing the total value of all the investments by how many shares there are. You can buy or sell these shares at the price they're worth at the end of the day. The good thing about mutual funds is that they have lots of different investments, so if one doesn't do well, others might make up for it."
        case .mutualReturns:
            return "Mutual funds make money for investors in three main ways. First, they give out money they earned from dividends on stocks and interest on bonds to the people who invested in the fund. They can either get a check or use the money to buy more shares. Second, if the fund sells things that have gone up in price, investors get a part of the profits. Lastly, when the value of the shares in the fund goes up, you can sell your shares for more money. When you check how well a mutual fund is doing, you'll see something called total return. It shows if the investment went up or down in value over a certain time. It includes things like interest, dividends, profits, and changes in the fund's worth. They calculate the total return for different time periods, like one, five, and ten years, or since the fund started."
        case .mutualTypes:
            return """
            1. Stock funds: These funds invest in company stocks, and there are different kinds based on the size of the companies and their investment strategies.
            2. Bond funds: These funds focus on safe investments such as government or company bonds.
            3. Index funds: Index funds track large market groups and generally have lower costs.
            4. Balanced funds: These funds invest in a mix of assets to provide a balanced approach and reduce risk.
            5. Money market funds: Money market funds are considered safe but typically offer lower returns.
            6. Income funds: Income funds generate regular income from government and company debt securities.
            7. International/Global funds: These funds invest in securities from other countries.
            8. Specialty funds: Specialty funds concentrate on specific areas or follow unique investment rules, such as investing exclusively in environmentally responsible assets.
"""
        case .mutualFees:
            return "Mutual funds are a way to invest money, but they have fees you need to know about. There are two types of fees: annual fees and shareholder fees. Annual fees are a percentage of your investment, usually between 1% and 3%, and cover managing the fund. Shareholder fees are charges for buying or selling the fund. Furthermore, there are different kinds of mutual fund shares. A-shares are common and bought through a broker, with fees when you buy and ongoing fees. Some advisors might suggest higher-fee options for more money. To make things better, some companies made new shares. C shares have no buying fee but charge every year. B shares have a fee when you sell. It's important to understand these shares and fees when investing in mutual funds."
        case .ETFs:
            return "Moving on from mutual funds, we will now discuss ETFs. ETFs, or Exchange-Traded Funds, are like baskets of different investments that you can buy and sell. They give you a way to invest in lots of different securities all at once. It can follow things like stock market numbers or types of businesses. Unlike regular investments, you can buy or sell ETFs on a special stock exchange. They are different from mutual funds, which you can only trade once a day. ETFs are popular because they can help you spread your money across many different assets to be safer. They have prices that change during the day and you can easily buy or sell them."
        case .etfTypes:
            return """
Here is a list of different types of ETFs that you can invest in:
1. Passive ETFs: These ETFs copy the performance of a group of stocks or bonds.
2. Active ETFs: These ETFs have managers who make decisions about what to include in the fund.
3. Bond ETFs: They provide regular income based on bonds.
4. Stock ETFs: These ETFs track specific industries or sectors.
5. Industry ETFs: They focus on one type of business, like technology or energy.
6. Commodity ETFs: These ETFs invest in things like oil or gold.
7. Currency ETFs: They track different currencies.
8. Inverse ETFs: These ETFs make money when stocks go down.
9. Leveraged ETFs: They try to multiply investment returns.
"""
        case .options:
            return "We will now learn about options, which are financial contracts that grant investors the right (but not the obligation) to buy or sell a particular asset, such as stocks, at a predetermined price within a specified timeframe. For example, let's say you have an option to buy a stock at $50 within the next month. If the stock's price goes up to $60, you can use your option to buy it at the lower price and make a profit. People use options to make money or reduce risk. There are two types: call options let you buy something at a certain price for a while, and put options let you sell something at a certain price for a while. It's important to look at how many options are being traded and how many are available to make good decisions. Some options can be used anytime before they expire, while others can only be used on the expiration date. Using an option means actually buying or selling the security."
        case .special:
            return "Options contracts are like special agreements for buying or selling stocks. When you buy an option, you pay a fee called a premium. It's like paying for a ticket to invest. The premium depends on how much the stock costs and when the option expires. The expiration date is like the last day to use the ticket. Stocks usually have an expiration date on the third Friday of the month. Options spreads are strategies that use different kinds of options to manage risk and make money. It's like using different game plans to win in different situations, whether the stock goes up or down or when things are calm or crazy."
        case .game1:
            return "Play a Game"
        case .alternative:
            return "In addition to stocks, bonds, mutual funds, ETFs, and options, there are other investment options that can help you diversify and explore new opportunities. These are called alternative investments. They include things like real estate, commodities, hedge funds, and private equity. Alternative investments are different from traditional ones and can give you a chance to make money in different ways. By learning about alternative investments, you can potentially grow your money."
        case .cryptocurrency:
            return "Cryptocurrency is a type of digital money. It is not controlled by any government, so it can't be manipulated by them. Cryptocurrencies can be used for online payments without needing a middleman. They can be obtained through mining, exchanges, or as rewards. While they are not widely used for buying things, their values have made them popular for trading and investing. Cryptocurrencies are based on blockchain technology, which is like an online ledger made up of connected blocks of information. Each block contains verified transactions, and new blocks must be approved by a network of computers before they can be added. Blockchain technology has potential uses in various industries and can help make processes more efficient, like payment processing."
        case .realEstate:
            return "Real estate refers to land and buildings that stay in one place, like houses. When people make improvements to the land, like adding utilities or making it better, it becomes more valuable. You can invest in real estate by owning a home, renting properties, or buying and selling houses. The value of real estate can change depending on where it is and things like jobs, safety, and taxes. You can also invest indirectly through real estate companies called REITs or by buying funds that include mortgages."
        case .privateEquities:
            return "Private equities are investments in companies that aren't traded on the public stock market. Hedge funds, on the other hand, are investment groups managed by experts who use different strategies to make money while reducing risks. Think of it as a team of super-smart investors working together to find the best ways to grow their money."
        case .venture:
            return "Venture capital is a special kind of money that helps new and exciting companies grow. It's like a big investor giving money to a small business in exchange for a part of the company. These investors are called venture capitalists, and they not only give money but also help the company succeed by giving advice and introducing them to important people. Venture capital is important because it supports innovative ideas and helps create new jobs and cool products that can change the world. If you're interested in starting your own business someday, understanding venture capital can show you how to get the funding and support you need to make your ideas come to life."
        case .commodities:
            return "Lastly, there are commodities. Commodities are resources that play a vital role in the global economy and are part of our daily lives. Examples of commodities include oil, gold, wheat, and coffee. These items hold value, allowing people to engage in buying and selling transactions. The prices of commodities can change because of different reasons like how much is available and how much people want them. Investing in commodities can be a way to make money, but it can also be risky because the prices fluctuate a lot. It's important to learn more about how commodities work before deciding to invest in them."
        case .international:
            return "The previous modules primarily concentrated on investment opportunities within the United States. Nonetheless, exploring global markets for investment purposes can also be a lucrative and astute strategy. Investing in international markets and global diversification means buying a small part of companies or assets from other countries to grow our money and reduce risks. By spreading our investments across different countries, we can be ready for changes in the world economy and take advantage of opportunities in places like China, India, and Brazil. However, we need to learn about each country's rules and risks before investing internationally. Understanding these things will help us make smart choices and become savvy global investors, expanding our knowledge and building a brighter financial future."
        case .currencyRates:
            return "When you invest your money globally, it's important to know about two things: currency exchange rates and geopolitical risks. Currency exchange rates decide how much one currency is worth compared to another. The value of currency exchange rates affects how much money you can make from global investments. Let's say you invest in another country's stock market, and their currency becomes stronger compared to your own currency (it can convert to more foreign currency than before). When you sell your investments and convert the money back to your currency, you'll get more money than what you originally invested. Geopolitical risks refer to things such as political problems or trade issues between countries. These risks can also make the exchange rates go up and down. For example, if two countries have a trade dispute, people might start losing trust in one country's money. This can make the value of that money go down, meaning it's worth less when exchanged for other currencies. To be a smart investor, you need to watch out for these changes and understand how they can impact your investments."
        case .emerging:
            return "An important aspect of global investing involves the exploration and investment of emerging markets. Emerging markets are countries with developing economies that are experiencing rapid growth and transformation. Investing in these markets can be a good opportunity due to the fact that they are growing quickly and can produce a high return. Investors that start early in these markets can become very successful. However, it's important to know that there are also difficulties. Problems with politics, complicated rules, and exchange rates that keep changing value can make it harder. You need to do research, think long-term, and spread your investments to be safe."
        case .rothIRA:
            return "When it comes to planning for the future, understanding retirement accounts is essential for securing financial stability during retirement. These special accounts, like IRAs and 401(k)s, help you save money for when you're older and decide to stop working. They have benefits, like paying fewer taxes and making your money grow over time. Generally, there are two options: the 401(k) and the Roth IRA. With a 401(k), your employer helps you save from your paycheck before taxes, lowering what you pay in taxes each year. They might even add extra money to your savings! On the other hand, a Roth IRA is a personal savings account where you put in money you've already paid taxes on. The good part is, when you take the money out during retirement, you won't have to pay taxes on it. Both ways have their own rules, but the main difference is when you pay taxes. It's important to learn more about these accounts so you can make smart choices and save for your future."
        }
    }
    
    var nextTopic: Topic {
        switch self {
        case .investingBasics:
            return .personalFinancialGoals
        case .personalFinancialGoals:
            return .timeValueOfMoney
        case .timeValueOfMoney:
            return .riskToleranceTimeHorizon
        case .riskToleranceTimeHorizon:
            return .importantTerms
        case .importantTerms:
            return .whatAreStocks
        case .whatAreStocks:
            return .shareholderOwnership
        case .shareholderOwnership:
            return .commonVsPreferredStock
        case .commonVsPreferredStock:
            return .buyingVsShorting
        case .buyingVsShorting:
            return .fixedIncome
        case .fixedIncome:
            return .bonds
        case .bonds:
            return .bondWorks
        case .bondWorks:
            return .bondCharacteristics
        case .bondCharacteristics:
            return .bondTypes
        case .bondTypes:
            return .bondPricing
        case .bondPricing:
            return .mutualFunds
        case .mutualFunds:
            return .pricingMutual
        case .pricingMutual:
            return .mutualReturns
        case .mutualReturns:
            return .mutualTypes
        case .mutualTypes:
            return .mutualFees
        case .mutualFees:
            return .ETFs
        case .ETFs:
            return .etfTypes
        case .etfTypes:
            return .options
        case .options:
            return .special
        case .special:
            return .game1
        case .game1:
            return .alternative
        case .alternative:
            return .cryptocurrency
        case .cryptocurrency:
            return .realEstate
        case .realEstate:
            return .privateEquities
        case .privateEquities:
            return .venture
        case .venture:
            return .commodities
        case .commodities:
            return .international
        case .international:
            return .currencyRates
        case .currencyRates:
            return .emerging
        case .emerging:
            return .rothIRA
        case .rothIRA:
            return .investingBasics
        }
    }
    
    var hasQuiz: Bool {
        switch self {
        case .investingBasics, .personalFinancialGoals, .timeValueOfMoney, .riskToleranceTimeHorizon, .importantTerms, .whatAreStocks, .shareholderOwnership, .commonVsPreferredStock, .buyingVsShorting, .fixedIncome, .bonds, .bondWorks, .bondCharacteristics, .bondTypes, .bondPricing, .mutualFunds, .pricingMutual, .mutualReturns, .mutualTypes, .mutualFees, .ETFs, .etfTypes, .options, .special, .game1, .alternative, .cryptocurrency, .realEstate, .privateEquities, .venture, .commodities, .international, .currencyRates, .emerging, .rothIRA:
            return true
        }
    }
    
    var quizQuestion: String {
        switch self {
        case .investingBasics:
            return "What is the main purpose of buying stocks?"
        case .personalFinancialGoals:
            return "What is the main purpose of buying stocks?"
        case .timeValueOfMoney:
            return "What is the main purpose of buying stocks?"
        case .riskToleranceTimeHorizon:
            return "What is the main purpose of buying stocks?"
        case .importantTerms:
            return "What is the main purpose of buying stocks?"
        case .whatAreStocks:
            return "What is the main purpose of buying stocks?"
        case .shareholderOwnership:
            return "What rights do shareholders have?"
        case .commonVsPreferredStock:
            return "What is the main difference between common and preferred stock?"
        case .buyingVsShorting:
            return "What is short selling?"
        case .fixedIncome:
            return "What is short selling?"
        case .bonds:
            return "Which of the following statements about bonds is true?"
        case .bondWorks:
            return "How do bonds work?"
        case .bondCharacteristics:
            return "Which of the following is a characteristic of bonds?"
        case .bondTypes:
            return "Which of the following is a type of bond?"
        case .bondPricing:
            return "What factors affect bond pricing?"
        case .mutualFunds:
            return "What is a mutual fund?"
        case .pricingMutual:
            return "How are mutual funds priced?"
        case .mutualReturns:
            return "How are mutual fund returns calculated?"
        case .mutualTypes:
            return "Which of the following is a type of mutual fund?"
        case .mutualFees:
            return "What are mutual fund fees?"
        case .ETFs:
            return "What are exchange-traded funds (ETFs)?"
        case .etfTypes:
            return "Which of the following is a type of ETF?"
        case .options:
            return "What are options in investing?"
        case .special:
            return "What are some special considerations in investing?"
        case .game1:
            return "How well do you understand investing concepts? Play a game to find out!"
        case .alternative:
            return "What are alternative investments?"
        case .cryptocurrency:
            return "What is cryptocurrency?"
        case .realEstate:
            return "What is real estate investing?"
        case .privateEquities:
            return "What are private equities and hedge funds?"
        case .venture:
            return "What is venture capital?"
        case .commodities:
            return "What are commodities?"
        case .international:
            return "Why is global diversification important in investing?"
        case .currencyRates:
            return "How do exchange rates and geopolitical risks impact investments?"
        case .emerging:
            return "What are emerging markets?"
        case .rothIRA:
            return "What is the difference between a 401(k) and a Roth IRA?"
        }
    }
    
    var quizOptions: [String] {
        switch self {
        case .investingBasics:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .personalFinancialGoals:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .timeValueOfMoney:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .riskToleranceTimeHorizon:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .importantTerms:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .whatAreStocks:
            return [
                "To earn a fixed interest rate",
                "To have ownership in a company",
                "To speculate on stock prices",
                "To receive monthly dividends"
            ]
        case .shareholderOwnership:
            return [
                "Voting rights and dividends",
                "Access to company facilities",
                "Exclusive discounts on products",
                "Priority access to IPOs"
            ]
        case .commonVsPreferredStock:
            return [
                "Common stockholders have voting rights, while preferred stockholders do not",
                "Preferred stockholders have voting rights, while common stockholders do not",
                "Common stock pays fixed dividends, while preferred stock pays variable dividends",
                "Preferred stock pays fixed dividends, while common stock pays variable dividends"
            ]
        case .buyingVsShorting:
            return [
                "Borrowing stocks, selling them, and buying them back later",
                "Buying stocks and holding them for the long term",
                "Buying stocks and selling them immediately",
                "Investing in mutual funds"
            ]
        case .fixedIncome:
            return [
                "Borrowing stocks, selling them, and buying them back later",
                "Buying stocks and holding them for the long term",
                "Buying stocks and selling them immediately",
                "Investing in mutual funds"
            ]
        case .bonds:
            return [
                "Bonds are always risk-free investments",
                "Bonds have a fixed interest rate",
                "Bonds are only issued by governments",
                "Bonds cannot be bought or sold"
            ]
        case .bondWorks:
            return [
                "Bonds are loans made by investors to governments or corporations",
                "Bonds are shares of ownership in a company",
                "Bonds are short-term investments",
                "Bonds are not affected by interest rates"
            ]
        case .bondCharacteristics:
            return [
                "Maturity date, coupon rate, and face value",
                "Dividend yield, beta, and P/E ratio",
                "Market cap, price-to-sales ratio, and book value",
                "EPS, ROE, and PEG ratio"
            ]
        case .bondTypes:
            return [
                "Government bonds, corporate bonds, and municipal bonds",
                "Growth stocks, value stocks, and income stocks",
                "Large-cap stocks, mid-cap stocks, and small-cap stocks",
                "Index funds, mutual funds, and ETFs"
            ]
        case .bondPricing:
            return [
                "Interest rates, credit rating, and time to maturity",
                "Stock prices, trading volume, and market sentiment",
                "Dividend yield, earnings growth, and P/E ratio",
                "Beta, alpha, and standard deviation"
            ]
        case .mutualFunds:
            return [
                "A professionally managed investment fund",
                "An individual stock in a specific company",
                "A type of bond",
                "A savings account"
            ]
        case .pricingMutual:
            return [
                "Mutual funds are priced at the net asset value (NAV)",
                "Mutual funds are priced based on supply and demand",
                "Mutual funds are priced at a fixed rate",
                "Mutual funds are priced based on the stock market index"
            ]
        case .mutualReturns:
            return [
                "By calculating the difference between the current price and the purchase price",
                "By dividing the total assets by the number of outstanding shares",
                "By comparing the returns to the S&P 500 index",
                "By multiplying the expense ratio by the average annual return"
            ]
        case .mutualTypes:
            return [
                "Money market funds, bond funds, and equity funds",
                "Growth stocks, value stocks, and dividend stocks",
                "Large-cap stocks, mid-cap stocks, and small-cap stocks",
                "Index funds, ETFs, and hedge funds"
            ]
        case .mutualFees:
            return [
                "Fees charged by mutual funds for managing the investments",
                "Fees paid to stockbrokers for buying and selling mutual funds",
                "Fees charged by the government on mutual fund investments",
                "Fees paid to financial advisors for recommending mutual funds"
            ]
        case .ETFs:
            return [
                "Investment funds that are traded on stock exchanges",
                "Investment funds that are only available to institutional investors",
                "Investment funds that are managed by hedge funds",
                "Investment funds that are guaranteed by the government"
            ]
        case .etfTypes:
            return [
                "Equity ETFs, bond ETFs, and commodity ETFs",
                "Growth stocks, value stocks, and income stocks",
                "Large-cap stocks, mid-cap stocks, and small-cap stocks",
                "Index funds, mutual funds, and money market funds"
            ]
        case .options:
            return [
                "Financial derivatives that give the holder the right to buy or sell an asset",
                "Fixed-income securities issued by governments or corporations",
                "Mutual funds that focus on options trading strategies",
                "Special investment products for high-net-worth individuals"
            ]
        case .special:
            return [
                "Tax considerations, risk management, and market timing",
                "Social media sentiment, technical analysis, and day trading",
                "Penny stocks, initial coin offerings (ICOs), and pyramid schemes",
                "Speculating on short-term market trends and hot stock tips"
            ]
        case .game1:
            return [
                "Tax considerations, risk management, and market timing",
                "Social media sentiment, technical analysis, and day trading",
                "Penny stocks, initial coin offerings (ICOs), and pyramid schemes",
                "Speculating on short-term market trends and hot stock tips"
            ]
        case .alternative:
            return [
                "Investments that deviate from traditional asset classes",
                "Investments with guaranteed returns",
                "Investments in foreign currencies",
                "Investments in speculative stocks"
            ]
        case .cryptocurrency:
            return [
                "Digital currencies secured by cryptography",
                "Government-issued paper money",
                "Investments in precious metals",
                "Investments in emerging markets"
            ]
        case .realEstate:
            return [
                "Investing in physical properties like houses or commercial buildings",
                "Investing in stocks of real estate companies",
                "Investing in virtual properties in online games",
                "Investing in foreign real estate markets"
            ]
        case .privateEquities:
            return [
                "Investments in non-publicly traded companies",
                "Investments in government bonds",
                "Investments in publicly traded companies",
                "Investments in real estate"
            ]
        case .venture:
            return [
                "Investing in early-stage companies with high growth potential",
                "Investing in blue-chip stocks",
                "Investing in government securities",
                "Investing in mutual funds"
            ]
        case .commodities:
            return [
                "Physical goods or raw materials that can be bought and sold",
                "Investments in large-cap stocks",
                "Investments in foreign exchange markets",
                "Investments in real estate investment trusts (REITs)"
            ]
        case .international:
            return [
                "To diversify investments and reduce risk",
                "To maximize short-term gains",
                "To take advantage of tax loopholes",
                "To invest in emerging markets with high growth potential"
            ]
        case .currencyRates:
            return [
                "Exchange rates determine the value of investments in different currencies",
                "Geopolitical risks impact the stability of financial markets",
                "Exchange rates only affect international travelers",
                "Geopolitical risks have no impact on investment returns"
            ]
        case .emerging:
            return [
                "Developing countries with rapidly growing economies and markets",
                "Investment strategies that focus on short-term gains",
                "Investments in foreign real estate markets",
                "Stock markets with high volatility"
            ]
        case .rothIRA:
            return [
                "401(k) is employer-sponsored, while Roth IRA is an individual retirement account",
                "Roth IRA offers tax-free withdrawals in retirement, while 401(k) withdrawals are taxable",
                "401(k) contributions are made with pre-tax money, while Roth IRA contributions are made with after-tax money",
                "401(k) has contribution limits, while Roth IRA has no income limits"
            ]
        }
    }
    
    var correctAnswer: String {
        switch self {
        case .investingBasics:
            return "To have ownership in a company"
        case .personalFinancialGoals:
            return "To have ownership in a company"
        case .timeValueOfMoney:
            return "To have ownership in a company"
        case .riskToleranceTimeHorizon:
            return "To have ownership in a company"
        case .importantTerms:
            return "To have ownership in a company"
        case .whatAreStocks:
            return "To have ownership in a company"
        case .shareholderOwnership:
            return "Voting rights and dividends"
        case .commonVsPreferredStock:
            return "Common stockholders have voting rights, while preferred stockholders do not"
        case .buyingVsShorting:
            return "Borrowing stocks, selling them, and buying them back later"
        case .fixedIncome:
            return "Borrowing stocks, selling them, and buying them back later"
        case .bonds:
            return "Bonds have a fixed interest rate"
        case .bondWorks:
            return "Bonds are loans made by investors to governments or corporations"
        case .bondCharacteristics:
            return "Maturity date, coupon rate, and face value"
        case .bondTypes:
            return "Government bonds, corporate bonds, and municipal bonds"
        case .bondPricing:
            return "Interest rates, credit rating, and time to maturity"
        case .mutualFunds:
            return "A professionally managed investment fund"
        case .pricingMutual:
            return "Mutual funds are priced at the net asset value (NAV)"
        case .mutualReturns:
            return "By calculating the difference between the current price and the purchase price"
        case .mutualTypes:
            return "Money market funds, bond funds, and equity funds"
        case .mutualFees:
            return "Fees charged by mutual funds for managing the investments"
        case .ETFs:
            return "Investment funds that are traded on stock exchanges"
        case .etfTypes:
            return "Equity ETFs, bond ETFs, and commodity ETFs"
        case .options:
            return "Financial derivatives that give the holder the right to buy or sell an asset"
        case .special:
            return "Tax considerations, risk management, and market timing"
        case .game1:
            return "Tax considerations, risk management, and market timing"
        case .alternative:
            return "Investments that deviate from traditional asset classes"
        case .cryptocurrency:
            return "Digital currencies secured by cryptography"
        case .realEstate:
            return "Investing in physical properties like houses or commercial buildings"
        case .privateEquities:
            return "Investments in non-publicly traded companies"
        case .venture:
            return "Investing in early-stage companies with high growth potential"
        case .commodities:
            return "Physical goods or raw materials that can be bought and sold"
        case .international:
            return "To diversify investments and reduce risk"
        case .currencyRates:
            return "Exchange rates determine the value of investments in different currencies"
        case .emerging:
            return "Developing countries with rapidly growing economies and markets"
        case .rothIRA:
            return "Roth IRA offers tax-free withdrawals in retirement, while 401(k) withdrawals are taxable"
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            LevelView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


