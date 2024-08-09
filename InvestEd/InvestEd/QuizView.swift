import SwiftUI

struct QuizView: View {
    
    let quizNames = ["The Basics", "Stocks", "Bonds and Fixed Income Investments", "Mutual Funds and ETFs", "Options", "Alternative Investments", "Global Investing and Emerging Markets", "Retirement Accounts", "Investment research", "Final Steps"]
    let quizzes = [
        Quiz(questions: [
            Question(text: "1. What is the time value of money concept?", answers: [
                Answer(text: "Money received now is less valuable than the same amount received later.", isCorrect: false),
                Answer(text: "Money received now is more valuable than the same amount received later.", isCorrect: true),
                Answer(text: "Money received now and later are of equal value.", isCorrect: false),
                Answer(text: "Money received now and later has no value.", isCorrect: false)
            ]),
            Question(text: "2. How does inflation affect the value of money?", answers: [
                Answer(text: "It increases the purchasing power of money.", isCorrect: false),
                Answer(text: "It has no effect on the value of money.", isCorrect: false),
                Answer(text: "It decreases the purchasing power of money.", isCorrect: true),
                Answer(text: "It stabilizes the value of money.", isCorrect: false)
            ]),
            Question(text: "3. What does risk tolerance refer to in the context of investments?", answers: [
                Answer(text: "The length of time you plan to invest before needing the money.", isCorrect: false),
                Answer(text: "The comfort level with taking on investment risks.", isCorrect: true),
                Answer(text: "The pursuit of higher returns through risky investments.", isCorrect: false),
                Answer(text: "The preference for a conservative approach in investing.", isCorrect: false)
            ]),
            Question(text: "4. How does the time horizon impact investment strategies?", answers: [
                Answer(text: "It determines the appropriate investment options based on comfort level.", isCorrect: false),
                Answer(text: "It determines the risk level of investments.", isCorrect: false),
                Answer(text: "It determines the length of time you plan to invest before needing the money.", isCorrect: true),
                Answer(text: "It aligns with financial goals and risk tolerance.", isCorrect: false)
            ]),
            Question(text: "5. What is the definition of interest rate?", answers: [
                Answer(text: "The general increase in prices of goods and services over time.", isCorrect: false),
                Answer(text: "The cost of borrowing money or the return earned on an investment, expressed as a percentage.", isCorrect: true),
                Answer(text: "Earning interest on both the initial amount of money and the interest that has been previously earned.", isCorrect: false),
                Answer(text: "The possibility of losing money or not achieving expected returns on an investment.", isCorrect: false)
            ]),
            Question(text: "6. What is the concept of compound interest?", answers: [
                Answer(text: "The cost of borrowing money or the return earned on an investment, expressed as a percentage.", isCorrect: false),
                Answer(text: "The general increase in prices of goods and services over time.", isCorrect: false),
                Answer(text: "Earning interest on both the initial amount of money and the interest that has been previously earned.", isCorrect: true),
                Answer(text: "A measure of the profitability of an investment, expressed as a percentage.", isCorrect: false)
            ]),
            Question(text: "7. What is the definition of diversification/asset allocation?", answers: [
                Answer(text: "Spreading your investments across different asset classes to reduce risk.", isCorrect: true),
                Answer(text: "A measure of the performance of a specific group of stocks or other securities.", isCorrect: false),
                Answer(text: "The possibility of losing money or not achieving expected returns on an investment.", isCorrect: false),
                Answer(text: "A distribution of a portion of a company's profits to its shareholders.", isCorrect: false)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. What are stocks also known as?", answers: [
                Answer(text: "Assets", isCorrect: false),
                Answer(text: "Profits", isCorrect: false),
                Answer(text: "Equity", isCorrect: true),
                Answer(text: "Shares", isCorrect: false)
            ]),
            Question(text: "2. Where can people buy and sell stocks?", answers: [
                Answer(text: "Supermarkets", isCorrect: false),
                Answer(text: "Banks", isCorrect: false),
                Answer(text: "Stock exchanges", isCorrect: true),
                Answer(text: "Online marketplaces", isCorrect: false)
            ]),
            Question(text: "3. How can you make a profit from stocks?", answers: [
                Answer(text: "By buying more shares", isCorrect: false),
                Answer(text: "By selling at a lower price", isCorrect: false),
                Answer(text: "By selling at a higher price", isCorrect: true),
                Answer(text: "By holding onto them indefinitely", isCorrect: false)
            ]),
            Question(text: "4. What is the term used to describe the concept of owning shares without owning the actual company?", answers: [
                Answer(text: "Stock control", isCorrect: false),
                Answer(text: "Ownership consolidation", isCorrect: false),
                Answer(text: "Separation of ownership and control", isCorrect: true),
                Answer(text: "Majority voting power", isCorrect: false)
            ]),
            Question(text: "5. What determines the voting power of a shareholder?", answers: [
                Answer(text: "The number of shares owned", isCorrect: true),
                Answer(text: "The reinvested earnings", isCorrect: false),
                Answer(text: "The board of directors' decision", isCorrect: false),
                Answer(text: "The company's value", isCorrect: false)
            ]),
            Question(text: "6. What is the main difference between common stock and preferred stock?", answers: [
                Answer(text: "Common stockholders can vote at meetings and receive dividends.", isCorrect: true),
                Answer(text: "Preferred stockholders can vote at meetings and receive dividends.", isCorrect: false),
                Answer(text: "Common stockholders cannot receive dividends.", isCorrect: false),
                Answer(text: "Preferred stockholders receive more dividends than common stockholders.", isCorrect: false)
            ]),
            Question(text: "7. What advantage do preferred stockholders have in case of financial problems?", answers: [
                Answer(text: "They have voting rights to make decisions.", isCorrect: false),
                Answer(text: "They receive higher dividends than common stockholders.", isCorrect: false),
                Answer(text: "They receive their money first if the company can't pay everyone.", isCorrect: true),
                Answer(text: "They have the option to sell their stocks back to the company.", isCorrect: false)
            ]),
            Question(text: "8. What is short selling?", answers: [
                Answer(text: "Buying stocks and selling them at a higher price.", isCorrect: false),
                Answer(text: "Borrowing stocks, selling them, and buying them back at a lower price.", isCorrect: true),
                Answer(text: "Buying stocks and holding them for a long period of time.", isCorrect: false),
                Answer(text: "Borrowing stocks, selling them, and never buying them back.", isCorrect: false)
            ]),
            Question(text: "9. Why do investors engage in short selling?", answers: [
                Answer(text: "To make money when they think a stock's price will go up.", isCorrect: false),
                Answer(text: "To make money when they think a stock's price will go down.", isCorrect: true),
                Answer(text: "To protect themselves from losses.", isCorrect: false),
                Answer(text: "To hold stocks for a long period of time.", isCorrect: false)
            ]),
            Question(text: "10. What is the risk associated with short selling?", answers: [
                Answer(text: "Losing money if the stock's price goes down.", isCorrect: false),
                Answer(text: "Losing money if the stock's price goes up.", isCorrect: true),
                Answer(text: "Making a profit regardless of the stock's price movement.", isCorrect: false),
                Answer(text: "No risk involved in short selling.", isCorrect: false)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. What is the main characteristic of fixed income investments?", answers: [
                Answer(text: "They offer variable returns based on market conditions.", isCorrect: false),
                Answer(text: "They provide a steady and predictable payment.", isCorrect: true),
                Answer(text: "They are only available for purchase through funds.", isCorrect: false),
                Answer(text: "They are exclusively offered by governments.", isCorrect: false)
            ]),
            Question(text: "2. How do fixed income investments differ from stocks?", answers: [
                Answer(text: "They offer higher potential returns.", isCorrect: false),
                Answer(text: "They are more volatile in nature.", isCorrect: false),
                Answer(text: "They always provide the same amount of payment.", isCorrect: true),
                Answer(text: "They can be purchased individually or through funds.", isCorrect: false)
            ]),
            Question(text: "3. What is a bond?", answers: [
                Answer(text: "A type of investment that generates fixed income.", isCorrect: true),
                Answer(text: "A form of currency issued by the government.", isCorrect: false),
                Answer(text: "A payment provided by individuals to the government.", isCorrect: false),
                Answer(text: "A method of repairing roads and building schools.", isCorrect: false)
            ]),
            Question(text: "4. Why do governments and companies issue bonds?", answers: [
                Answer(text: "To attract video game enthusiasts.", isCorrect: false),
                Answer(text: "To borrow money for various purposes.", isCorrect: true),
                Answer(text: "To sell old video games.", isCorrect: false),
                Answer(text: "To repay lenders with interest.", isCorrect: false)
            ]),
            Question(text: "5. What determines the amount of interest received from a bond?", answers: [
                Answer(text: "The current market interest rates.", isCorrect: true),
                Answer(text: "The company's valuation.", isCorrect: false),
                Answer(text: "The risk tolerance of the investor.", isCorrect: false),
                Answer(text: "Previous interest rates.", isCorrect: false)
            ]),
            Question(text: "6. Which characteristic of bonds represents the amount the bond will be worth when it matures?", answers: [
                Answer(text: "Coupon rate", isCorrect: false),
                Answer(text: "Maturity date", isCorrect: false),
                Answer(text: "Face value", isCorrect: true),
                Answer(text: "Issue price", isCorrect: false)
            ]),
            Question(text: "7. What factor determines the interest rate of a bond?", answers: [
                Answer(text: "Face value", isCorrect: false),
                Answer(text: "Maturity date", isCorrect: false),
                Answer(text: "Coupon rate", isCorrect: false),
                Answer(text: "Credit rating and time until maturity", isCorrect: true)
            ]),
            Question(text: "8. Which type of bond is sold by companies instead of obtaining bank loans?", answers: [
                Answer(text: "Corporate bonds", isCorrect: true),
                Answer(text: "Municipal bonds", isCorrect: false),
                Answer(text: "Government bonds", isCorrect: false),
                Answer(text: "Agency bonds", isCorrect: false)
            ]),
            Question(text: "9. Which type of bond provides tax-free income to investors?", answers: [
                Answer(text: "Corporate bonds", isCorrect: false),
                Answer(text: "Municipal bonds", isCorrect: true),
                Answer(text: "Government bonds", isCorrect: false),
                Answer(text: "Agency bonds", isCorrect: false)
            ]),
            Question(text: "10. Which type of bond is sold by organizations connected to the government?", answers: [
                Answer(text: "Corporate bonds", isCorrect: false),
                Answer(text: "Municipal bonds", isCorrect: false),
                Answer(text: "Government bonds", isCorrect: false),
                Answer(text: "Agency bonds", isCorrect: true)
            ]),
            Question(text: "11. What are the three different prices at which bonds can be traded?", answers: [
                Answer(text: "Par, face, and market value.", isCorrect: false),
                Answer(text: "Premium, discount, and current yield.", isCorrect: false),
                Answer(text: "Face value, premium, and discount.", isCorrect: true),
                Answer(text: "Market value, current yield, and par.", isCorrect: false)
            ]),
            Question(text: "12. What factors influence bond prices?", answers: [
                Answer(text: "Time left until bond matures", isCorrect: false),
                Answer(text: "Issuer’s credit rating", isCorrect: false),
                Answer(text: "Market demand", isCorrect: false),
                Answer(text: "All of the above", isCorrect: true)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. What is the definition of mutual fund?", answers: [
                Answer(text: "A financial instrument that offers guaranteed returns and no investment risk", isCorrect: false),
                Answer(text: "A trust fund set up exclusively for children with exceptional artistic talents", isCorrect: false),
                Answer(text: "An investment vehicle that allows investors to speculate on the price movements of cryptocurrencies", isCorrect: false),
                Answer(text: "A collective investment scheme that pools money from multiple investors to invest in a diversified portfolio of securities such as stocks, bonds, or derivatives", isCorrect: true)
            ]),
            Question(text: "2. Which of the following is a primary advantage of investing in mutual funds?", answers: [
                Answer(text: "Guaranteed high returns", isCorrect: false),
                Answer(text: "Complete control over individual investments", isCorrect: false),
                Answer(text: "Diversification and professional management", isCorrect: true),
                Answer(text: "Instant access to cash withdrawals", isCorrect: false)
            ]),
            Question(text: "3. What is the price of a mutual fund share called?", answers: [
                Answer(text: "Net investment value (NIV) per share", isCorrect: false),
                Answer(text: "Net asset value (NAV) per share", isCorrect: true),
                Answer(text: "Share value ratio (SVR)", isCorrect: false),
                Answer(text: "Mutual fund pricing index (MFPI)", isCorrect: false)
            ]),
            Question(text: "4. How is the net asset value (NAV) per share calculated?", answers: [
                Answer(text: "By dividing the total number of shares by the total value of investments", isCorrect: false),
                Answer(text: "By multiplying the total value of investments by the total number of shares", isCorrect: false),
                Answer(text: "By subtracting the total number of shares from the total value of investments", isCorrect: false),
                Answer(text: "By dividing the total value of investments by the total number of shares", isCorrect: true)
            ]),
            Question(text: "5. What does “total return” of a mutual fund represent?", answers: [
                Answer(text: "The amount of money an investor receives as dividends and interest", isCorrect: false),
                Answer(text: "The profit made from selling assets at a higher price", isCorrect: false),
                Answer(text: "The overall change in value of the investment, including interest, dividends, profits, and changes in the fund’s worth", isCorrect: true),
                Answer(text: "The percentage increase in the number of shares held by an investor", isCorrect: false)
            ]),
            Question(text: "6. How are profits from the sale of assets reflected in mutual fund returns?", answers: [
                Answer(text: "They are factored into the fund’s total return calculation", isCorrect: true),
                Answer(text: "They are reinvested to purchase more assets for the fund", isCorrect: false),
                Answer(text: "They are distributed as additional dividends to investors", isCorrect: false),
                Answer(text: "They are retained by the fund manager as performance bonuses", isCorrect: false)
            ]),
            Question(text: "7. What is the primary focus of bond funds?", answers: [
                Answer(text: "Investing in company stocks", isCorrect: false),
                Answer(text: "Tracking large market groups", isCorrect: false),
                Answer(text: "Generating regular income from debt securities", isCorrect: true),
                Answer(text: "Investing in environmentally responsible assets", isCorrect: false)
            ]),
            Question(text: "8. What distinguishes index funds from other mutual funds?", answers: [
                Answer(text: "They invest in a mix of assets to provide a balanced approach.", isCorrect: false),
                Answer(text: "They focus on safe investments such as government or company bonds.", isCorrect: false),
                Answer(text: "They invest in securities from other countries.", isCorrect: false),
                Answer(text: "They track large market groups and generally have lower costs.", isCorrect: true)
            ]),
            Question(text: "9. What type of mutual fund shares typically involve fees when buying and ongoing fees?", answers: [
                Answer(text: "A-shares", isCorrect: true),
                Answer(text: "B-shares", isCorrect: false),
                Answer(text: "C-shares", isCorrect: false),
                Answer(text: "D-shares", isCorrect: false)
            ]),
            Question(text: "10. What are Exchange-Traded Funds (ETFs)?", answers: [
                Answer(text: "Baskets of different investments that can only be bought and sold once a day", isCorrect: false),
                Answer(text: "Securities that track stock market numbers and can be easily bought or sold on a stock exchange", isCorrect: true),
                Answer(text: "Trust funds designed for long-term investments in specific types of businesses", isCorrect: false),
                Answer(text: "Mutual funds with fixed prices that provide safer investment options", isCorrect: false)
            ]),
            Question(text: "11. What is one advantage of investing in ETFs?", answers: [
                Answer(text: "Higher returns compared to other investment options", isCorrect: false),
                Answer(text: "Ability to trade multiple times a day for maximum profits", isCorrect: false),
                Answer(text: "Limited risk due to the ability to easily buy or sell them on a stock exchange", isCorrect: true),
                Answer(text: "Exclusive access to long-term investments in specific types of businesses", isCorrect: false)
            ]),
            Question(text: "12. How are ETFs different from mutual funds?", answers: [
                Answer(text: "ETFs allow trading multiple times a day, while mutual funds can only be traded once a day", isCorrect: true),
                Answer(text: "ETFs are safer investments compared to mutual funds", isCorrect: false),
                Answer(text: "ETFs are only focused on stock market numbers, while mutual funds can invest in various assets", isCorrect: false),
                Answer(text: "ETFs can only be bought or sold through a special stock exchange, while mutual funds have no such restrictions", isCorrect: false)
            ]),
            Question(text: "13. What distinguishes Passive ETFs from Active ETFs?", answers: [
                Answer(text: "Passive ETFs invest in commodities, while Active ETFs invest in stocks.", isCorrect: false),
                Answer(text: "Passive ETFs have managers who make investment decisions, while Active ETFs copy the performance of a group of stocks or bonds.", isCorrect: true),
                Answer(text: "Passive ETFs focus on one type of business, while Active ETFs track specific industries or sectors.", isCorrect: false),
                Answer(text: "Passive ETFs copy the performance of a group of stocks or bonds, while Active ETFs have managers who make decisions about what to include in the fund.", isCorrect: false)
            ]),
            Question(text: "14. Which type of ETF provides regular income based on bonds?", answers: [
                Answer(text: "Passive ETFs", isCorrect: false),
                Answer(text: "Active ETFs", isCorrect: false),
                Answer(text: "Stock ETFs", isCorrect: false),
                Answer(text: "Bond ETFs", isCorrect: true)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. What are options?", answers: [
                Answer(text: "Contracts that guarantee profits in the financial market", isCorrect: false),
                Answer(text: "Contracts that require investors to buy or sell assets", isCorrect: false),
                Answer(text: "Financial contracts that grant the right to buy or sell assets at a predetermined price within a specified timeframe", isCorrect: true),
                Answer(text: "Contracts that restrict investors from making any financial transactions", isCorrect: false)
            ]),
            Question(text: "2. What are the two types of options mentioned in the text?", answers: [
                Answer(text: "Fixed options and variable options", isCorrect: false),
                Answer(text: "Long options and short options", isCorrect: true),
                Answer(text: "Primary options and secondary options", isCorrect: false),
                Answer(text: "Call options and put options", isCorrect: false)
            ]),
            Question(text: "3. What is the purpose of paying a premium when buying an option?", answers: [
                Answer(text: "It acts as a fee for the option contract", isCorrect: true),
                Answer(text: "It covers the cost of buying stocks", isCorrect: false),
                Answer(text: "It guarantees a profit regardless of the stock’s performance", isCorrect: false),
                Answer(text: "It ensures a longer expiration date for the option", isCorrect: false)
            ]),
            Question(text: "4. What are options spreads?", answers: [
                Answer(text: "A type of agreement to buy or sell stocks at a fixed price", isCorrect: false),
                Answer(text: "Strategies used to manage risk and make money using different types of options", isCorrect: true),
                Answer(text: "Special offers that reduce the premium for options contracts", isCorrect: false),
                Answer(text: "The difference between the premium paid and the stock’s current value", isCorrect: false)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. What are alternative investments?", answers: [
                Answer(text: "Investment options controlled by the government", isCorrect: false),
                Answer(text: "Traditional investment options like stocks and bonds", isCorrect: false),
                Answer(text: "Investment options that provide diversification beyond stocks, bonds, mutual funds, and ETFs", isCorrect: true),
                Answer(text: "Investment options exclusively available to high-net-worth individuals", isCorrect: false)
            ]),
            Question(text: "2. Which of the following can be considered alternative investments?", answers: [
                Answer(text: "Cryptocurrencies and real estate", isCorrect: true),
                Answer(text: "Stocks and bonds", isCorrect: false),
                Answer(text: "Mutual funds and ETFs", isCorrect: false),
                Answer(text: "Options and hedge funds", isCorrect: false)
            ]),
            Question(text: "3. What is cryptocurrency?", answers: [
                Answer(text: "Digital money controlled by the government", isCorrect: false),
                Answer(text: "Physical coins used for online payments", isCorrect: false),
                Answer(text: "Online payment systems that require a middleman", isCorrect: false),
                Answer(text: "Decentralized digital money not controlled by any government", isCorrect: true)
            ]),
            Question(text: "4. How are transactions verified in cryptocurrency?", answers: [
                Answer(text: "Through a centralized authority", isCorrect: false),
                Answer(text: "Through a network of computers using blockchain technology", isCorrect: true),
                Answer(text: "By physical verification at cryptocurrency exchange centers", isCorrect: false),
                Answer(text: "By government agencies overseeing the transactions", isCorrect: false)
            ]),
            Question(text: "5. What is real estate?", answers: [
                Answer(text: "Digital properties traded on online platforms", isCorrect: false),
                Answer(text: "Land and buildings that stay in one place", isCorrect: true),
                Answer(text: "Virtual properties in virtual reality worlds", isCorrect: false),
                Answer(text: "Personal belongings such as furniture and appliances", isCorrect: false)
            ]),
            Question(text: "6. How can one invest in real estate?", answers: [
                Answer(text: "By purchasing stocks of real estate companies", isCorrect: false),
                Answer(text: "By renting out properties to generate income", isCorrect: false),
                Answer(text: "By buying and selling houses", isCorrect: false),
                Answer(text: "All of the above", isCorrect: true)
            ]),
            Question(text: "7. What are private equities?", answers: [
                Answer(text: "Investments in publicly traded companies", isCorrect: false),
                Answer(text: "Investments in companies traded on the public stock market", isCorrect: false),
                Answer(text: "Investments in companies not traded on the public stock market", isCorrect: true),
                Answer(text: "Investments in government-owned companies", isCorrect: false)
            ]),
            Question(text: "8. What is a hedge fund?", answers: [
                Answer(text: "A fund that invests exclusively in real estate", isCorrect: false),
                Answer(text: "An investment group managed by experts to reduce risks", isCorrect: true),
                Answer(text: "A type of investment focused on cryptocurrencies", isCorrect: false),
                Answer(text: "A government program supporting small businesses", isCorrect: false)
            ]),
            Question(text: "9. What is venture capital?", answers: [
                Answer(text: "Money given by small businesses to investors", isCorrect: false),
                Answer(text: "Money given by venture capitalists to small businesses", isCorrect: true),
                Answer(text: "Money given by banks to entrepreneurs", isCorrect: false),
                Answer(text: "Money given by governments to innovative ideas", isCorrect: false)
            ]),
            Question(text: "10. Why is venture capital important?", answers: [
                Answer(text: "It supports traditional business models", isCorrect: false),
                Answer(text: "It helps companies maintain their current growth rate", isCorrect: false),
                Answer(text: "It provides financial support to small businesses", isCorrect: true),
                Answer(text: "It provides financial support to well-established companies", isCorrect: false)
            ]),
            Question(text: "11. Which of the following is an example of a commodity?", answers: [
                Answer(text: "Television", isCorrect: false),
                Answer(text: "Laptop", isCorrect: false),
                Answer(text: "Coffee", isCorrect: true),
                Answer(text: "Bicycle", isCorrect: false)
            ]),
            Question(text: "12. Why can investing in commodities be risky?", answers: [
                Answer(text: "Commodities are not valuable.", isCorrect: false),
                Answer(text: "Commodities are easy to trade.", isCorrect: false),
                Answer(text: "Prices of commodities never change.", isCorrect: false),
                Answer(text: "Prices of commodities fluctuate a lot.", isCorrect: true)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1: Which of the following is a potential benefit of investing in international markets?", answers: [
                Answer(text: "Diversification", isCorrect: true),
                Answer(text: "Higher returns guaranteed", isCorrect: false),
                Answer(text: "Lower investment risk", isCorrect: false),
                Answer(text: "No currency exchange risk", isCorrect: false)
            ]),
            Question(text: "2. Why is global diversification important for investors?", answers: [
                Answer(text: "To minimize risks in the world economy", isCorrect: true),
                Answer(text: "To concentrate investments in one country", isCorrect: false),
                Answer(text: "To avoid investing in China, India, and Brazil", isCorrect: false),
                Answer(text: "To limit knowledge about each country's rules and risks", isCorrect: false)
            ]),
            Question(text: "3: How can geopolitical risks affect currency exchange rates?", answers: [
                Answer(text: "By causing political stability and strengthening the currency", isCorrect: false),
                Answer(text: "By increasing uncertainty and volatility, leading to currency fluctuations", isCorrect: true),
                Answer(text: "By encouraging foreign investment and boosting the currency", isCorrect: false),
                Answer(text: "By decreasing the demand for the currency in international markets", isCorrect: false)
            ]),
            Question(text: "4. How do currency exchange rates impact global investments?", answers: [
                Answer(text: "They determine the political stability of a country", isCorrect: false),
                Answer(text: "They influence the price of commodities", isCorrect: false),
                Answer(text: "They affect the value of one currency compared to another", isCorrect: true),
                Answer(text: "They determine the interest rates in a country", isCorrect: false)
            ]),
            Question(text: "5. What are emerging markets?", answers: [
                Answer(text: "Countries with stable economies and slow growth", isCorrect: false),
                Answer(text: "Countries with developing economies and rapid growth", isCorrect: true),
                Answer(text: "Countries with declining economies and limited opportunities", isCorrect: false),
                Answer(text: "Countries with established markets and low investment potential", isCorrect: false)
            ]),
            Question(text: "6. Why can investing in emerging markets be a good opportunity?", answers: [
                Answer(text: "They offer stable returns and low risks", isCorrect: false),
                Answer(text: "They have well-established political systems", isCorrect: false),
                Answer(text: "They experience rapid growth and can yield high returns", isCorrect: true),
                Answer(text: "They have fixed exchange rates and predictable rules", isCorrect: false)
            ]),
            Question(text: "7. What challenges are associated with investing in emerging markets?", answers: [
                Answer(text: "Stable political climate and straightforward rules", isCorrect: false),
                Answer(text: "Consistent exchange rates and easily understandable regulations", isCorrect: false),
                Answer(text: "Complicated politics, changing exchange rates, and complex rules", isCorrect: true),
                Answer(text: "High liquidity and minimal research requirements", isCorrect: false)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. Which retirement account allows you to save money from your paycheck before taxes?", answers: [
                Answer(text: "Roth IRA", isCorrect: false),
                Answer(text: "401(k)", isCorrect: true),
                Answer(text: "Both Roth IRA and 401(k)", isCorrect: false),
                Answer(text: "None of the above", isCorrect: false)
            ]),
            Question(text: "2. Which retirement account requires you to pay taxes on the money you contribute upfront?", answers: [
                Answer(text: "Roth IRA", isCorrect: true),
                Answer(text: "401(k)", isCorrect: false),
                Answer(text: "Both Roth IRA and 401(k)", isCorrect: false),
                Answer(text: "None of the above", isCorrect: false)
            ])
        ]),
        Quiz(questions: [
            Question(text: "1. Which of the following is NOT mentioned as an essential skill for making smart investment decisions?", answers: [
                Answer(text: "Reading financial statements", isCorrect: false),
                Answer(text: "Analyzing market trends", isCorrect: false),
                Answer(text: "Assessing the reliability of sources", isCorrect: false),
                Answer(text: "Evaluating the experience of the company's management team", isCorrect: true)
            ]),
            Question(text: "2. What is one way to minimize potential risks when making investment decisions?", answers: [
                Answer(text: "Analyzing market trends", isCorrect: false),
                Answer(text: "Reading financial sources", isCorrect: false),
                Answer(text: "Assessing the reliability of sources", isCorrect: false),
                Answer(text: "All of the above", isCorrect: true)
            ]),
            Question(text: "3. Which online forum is mentioned as a great place to engage with other investors and learn from them?", answers: [
                Answer(text: "Seeking Alpha", isCorrect: false),
                Answer(text: "Reddit's r/investing", isCorrect: false),
                Answer(text: "Stocktwits", isCorrect: false),
                Answer(text: "All of the above", isCorrect: true)
            ]),
            Question(text: "4. Which tool allows investors to analyze financial data and stock performance?", answers: [
                Answer(text: "Snapchat", isCorrect: false),
                Answer(text: "Yahoo Finance", isCorrect: true),
                Answer(text: "WhatsApp", isCorrect: false),
                Answer(text: "Pinterest", isCorrect: false)
            ]),
            Question(text: "5. When evaluating financial news and analyst reports, it is important to:", answers: [
                Answer(text: "Rely solely on a single source for information", isCorrect: false),
                Answer(text: "Consider the credibility and biases of the source", isCorrect: true),
                Answer(text: "Ignore conflicting opinions and viewpoints", isCorrect: false),
                Answer(text: "Base investment decisions solely on headline news", isCorrect: false)
            ]),
            Question(text: "6. What is the central purpose of analyzing financial news and reports?", answers: [
                Answer(text: "To estimate the company's future performance", isCorrect: false),
                Answer(text: "To understand the company's financial health and potential as an investment", isCorrect: true),
                Answer(text: "To compare the company's sales growth with its competitors", isCorrect: false),
                Answer(text: "To identify the advantages the company has over its industry", isCorrect: false)
            ]),
            Question(text: "7. Fundamental analysis primarily focuses on:", answers: [
                Answer(text: "Historical price patterns and market trends", isCorrect: false),
                Answer(text: "Evaluating a company's financial health and intrinsic value", isCorrect: true),
                Answer(text: "Short-term price movements and technical indicators", isCorrect: false),
                Answer(text: "Sentiment and investor behavior", isCorrect: false)
            ]),
            Question(text: "8. Technical analysis primarily involves:", answers: [
                Answer(text: "Analyzing financial statements and industry trends", isCorrect: false),
                Answer(text: "Assessing a company's competitive advantages and management team", isCorrect: false),
                Answer(text: "Studying historical price patterns and market trends", isCorrect: true),
                Answer(text: "Identifying macroeconomic factors that impact the market", isCorrect: false)
            ]),
            Question(text: "9. What are economic indicators?", answers: [
                Answer(text: "How many people are employed", isCorrect: false),
                Answer(text: "How much money people are spending", isCorrect: false),
                Answer(text: "Trends in market prices", isCorrect: false),
                Answer(text: "All of the above", isCorrect: true)
            ]),
            Question(text: "10. What does a bullish market trend indicate?", answers: [
                Answer(text: "Economic decline and decreased buying", isCorrect: false),
                Answer(text: "Economic stagnation and unchanged buying", isCorrect: false),
                Answer(text: "Decrease in market prices", isCorrect: false),
                Answer(text: "Increase in market prices", isCorrect: true)
            ]),
            Question(text: "Which statement best describes the risk-return tradeoff?", answers: [
                    Answer(text: "Taking more risks guarantees higher returns.", isCorrect: false),
                    Answer(text: "Taking more risks increases the chance of losing money.", isCorrect: true),
                    Answer(text: "Taking more risks always results in financial gain.", isCorrect: false),
                    Answer(text: "Taking more risks reduces the likelihood of losing money.", isCorrect: false)
                ]),
                Question(text: "How can investing for a long time impact the risk-return tradeoff?", answers: [
                    Answer(text: "It reduces the chance of making up for losses.", isCorrect: false),
                    Answer(text: "It decreases the potential returns.", isCorrect: false),
                    Answer(text: "It increases the potential for losses.", isCorrect: false),
                    Answer(text: "It improves the chances of making up for losses and earning more.", isCorrect: true)
                ]),
                Question(text: "What is the main principle of value investing?", answers: [
                    Answer(text: "Buying stocks based on market trends", isCorrect: false),
                    Answer(text: "Investing in stocks of popular companies", isCorrect: false),
                    Answer(text: "Identifying undervalued assets with growth potential", isCorrect: true),
                    Answer(text: "Following the buying patterns of other investors", isCorrect: false)
                ]),
                Question(text: "How do value investors approach investing?", answers: [
                    Answer(text: "They are impulsive and make quick investment decisions.", isCorrect: false),
                    Answer(text: "They rely on the opinions of financial experts.", isCorrect: false),
                    Answer(text: "They buy stocks when the market is doing well.", isCorrect: false),
                    Answer(text: "They are patient and wait for their investments to grow.", isCorrect: true)
                ]),
                Question(text: "What is growth investing?", answers: [
                    Answer(text: "A way to make money by buying stocks from large, established companies", isCorrect: false),
                    Answer(text: "A way to make money by buying stocks from small companies expected to grow in the future", isCorrect: true),
                    Answer(text: "A way to make money by investing in bonds and fixed-income securities", isCorrect: false),
                    Answer(text: "A way to make money by investing in real estate properties", isCorrect: false)
                ]),
                Question(text: "How do growth investors make money?", answers: [
                    Answer(text: "By receiving dividends from the companies they invest in", isCorrect: false),
                    Answer(text: "By selling the stocks at a higher price in the future", isCorrect: true),
                    Answer(text: "By investing in industries that are not growing quickly", isCorrect: false),
                    Answer(text: "By relying on short-term price fluctuations in the stock market", isCorrect: false)
                ]),
                Question(text: "What is the investing strategy that involves investing a fixed amount of money regularly over time, regardless of market conditions?", answers: [
                    Answer(text: "Value investing", isCorrect: false),
                    Answer(text: "Growth investing", isCorrect: false),
                    Answer(text: "Momentum investing", isCorrect: false),
                    Answer(text: "Dollar-cost averaging", isCorrect: true)
                ]),
                Question(text: "Which investing strategy aims to predict future stock performance based on patterns in stock prices?", answers: [
                    Answer(text: "Value investing", isCorrect: false),
                    Answer(text: "Growth investing", isCorrect: false),
                    Answer(text: "Momentum investing", isCorrect: true),
                    Answer(text: "Dollar-cost averaging", isCorrect: false)
                ]),
                Question(text: "What is asset allocation in portfolio construction?", answers: [
                    Answer(text: "Picking specific investments based on goals", isCorrect: false),
                    Answer(text: "Dividing money into different parts to balance risks and rewards", isCorrect: true),
                    Answer(text: "Investing solely in stocks for long-term goals", isCorrect: false),
                    Answer(text: "Saving money for specific purposes like retirement", isCorrect: false)
                ]),
                Question(text: "Why is asset allocation important in portfolio construction?", answers: [
                    Answer(text: "It helps in picking specific investments", isCorrect: false),
                    Answer(text: "It ensures a high return on investment", isCorrect: false),
                    Answer(text: "It allows for diversification", isCorrect: true),
                    Answer(text: "It helps in saving money for a car", isCorrect: false)
                ]),
                Question(text: "What is the best definition for diversification in the context of investing?", answers: [
                    Answer(text: "Spreading investments across different industries and countries", isCorrect: true),
                    Answer(text: "Deciding how to allocate assets", isCorrect: false),
                    Answer(text: "Investing in mutual funds and ETFs", isCorrect: false),
                    Answer(text: "Investing in different types of assets", isCorrect: false)
                ]),
                Question(text: "Why is diversification important in investing?", answers: [
                    Answer(text: "To protect yourself from problems in one area", isCorrect: true),
                    Answer(text: "To make investing safer", isCorrect: true),
                    Answer(text: "To have the chance for better returns", isCorrect: true),
                    Answer(text: "All of the above", isCorrect: true)
                ]),
                Question(text: "What does rebalancing involve?", answers: [
                    Answer(text: "Adjusting investments to keep them in the right balance.", isCorrect: true),
                    Answer(text: "Buying or selling investments to maximize profits.", isCorrect: false),
                    Answer(text: "Checking the portfolio every month for adjustments.", isCorrect: false),
                    Answer(text: "Selling investments that did well and buying new ones.", isCorrect: false)
                ]),
                Question(text: "How often should investors check their portfolio for adjustments?", answers: [
                    Answer(text: "Once a month.", isCorrect: false),
                    Answer(text: "Once every two years.", isCorrect: false),
                    Answer(text: "Once a week.", isCorrect: false),
                    Answer(text: "Once a year.", isCorrect: true)
                ]),
                Question(text: "What are the two main types of biases that can affect investment decisions?", answers: [
                    Answer(text: "Logical biases and analytical biases", isCorrect: false),
                    Answer(text: "Cognitive biases and emotional biases", isCorrect: true),
                    Answer(text: "Rational biases and intuitive biases", isCorrect: false),
                    Answer(text: "Social biases and cultural biases", isCorrect: false)
                ]),
                Question(text: "Which of the following is an example of a cognitive bias mentioned in the paragraph?", answers: [
                    Answer(text: "Holding onto losing stocks because of emotional attachment", isCorrect: false),
                    Answer(text: "Believing that past events predict the future", isCorrect: true),
                    Answer(text: "Thinking we're better investors than others", isCorrect: false),
                    Answer(text: "Being open-minded and considering different perspectives", isCorrect: false)
                ]),
                Question(text: "How can individuals make unbiased decisions in investing?", answers: [
                    Answer(text: "By only listening to opinions that agree with theirs", isCorrect: false),
                    Answer(text: "By holding onto losing stocks despite the losses", isCorrect: false),
                    Answer(text: "By being open-minded and considering different perspectives", isCorrect: true),
                    Answer(text: "By assuming past events predict the future", isCorrect: false)
                ]),
                Question(text: "Which tip suggests holding onto stocks that are performing well and have the potential to increase in value?", answers: [
                    Answer(text: "Sell a Loser", isCorrect: false),
                    Answer(text: "Don't Chase a Hot Tip", isCorrect: false),
                    Answer(text: "Ride a Winner", isCorrect: true),
                    Answer(text: "Be Open-Minded", isCorrect: false)
                ]),
                Question(text: "What should you focus on when investing in the long-term, according to the tips?", answers: [
                    Answer(text: "Short-term fluctuations", isCorrect: false),
                    Answer(text: "Penny stocks", isCorrect: false),
                    Answer(text: "Overall trajectory of investments", isCorrect: true),
                    Answer(text: "P/E ratio", isCorrect: false)
                ]),
                Question(text: "What should you avoid relying on alone to evaluate a company's value?", answers: [
                    Answer(text: "Short-term fluctuations", isCorrect: false),
                    Answer(text: "Penny stocks", isCorrect: false),
                    Answer(text: "Overall trajectory of investments", isCorrect: false),
                    Answer(text: "P/E ratio", isCorrect: true)
                ])
        ])
    ]
        

    @State private var selectedQuizIndex: Int? = nil
           
           var body: some View {
               NavigationView {
                   VStack {
                       Text("InvestEd - Quizzes")
                           .font(.title)
                           .bold()
                           .frame(maxWidth: .infinity)
                           .padding(.top, -50)
                       
                       
                       ScrollView {
                           ForEach(0..<quizzes.count, id: \.self) { quizIndex in
                               NavigationLink(destination: QuizContentView(quiz: quizzes[quizIndex], onQuizCompletion: { quizEnded in
                                   self.selectedQuizIndex = nil
                                   if quizEnded {
                                       // Reset quiz state and handle quiz completion
                                       resetQuizState()
                                       // Additional code for handling quiz completion
                                       // ...
                                   }
                               })) {
                                   Text(quizNames[quizIndex])
                                       .frame(maxWidth: .infinity)
                                       .padding()
                                       .background(Color.blue)
                                       .foregroundColor(.white)
                                       .cornerRadius(10)
                                       .fontWeight(.bold)
                               }
                               .padding()
                               .opacity(selectedQuizIndex != nil && selectedQuizIndex != quizIndex ? 0 : 1)
                               .animation(.easeInOut)
                           }
                       }

                       
                       if let selectedQuizIndex = selectedQuizIndex,
                          let currentQuiz = quizzes[safe: selectedQuizIndex] {
                           QuizContentView(quiz: currentQuiz) { quizEnded in
                               self.selectedQuizIndex = nil
                               if quizEnded {
                                   // Reset quiz state and handle quiz completion
                               }
                           }
                       }
                   }
               }
               .tabItem {
                   Image(systemName: "checkmark.circle.badge.questionmark.fill")
                   Text("Quizzes")
               }
           }
       }

    func resetQuizState() {
        // Add code to reset the quiz state here
    }

struct QuizContentView: View {
    let quiz: Quiz
    let onQuizCompletion: (Bool) -> Void
    
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: Answer? = nil
    @State private var showAnswers = false
    @State private var correctAnswersCount = 0
    @State private var quizEnded = false
    
    var body: some View {
       ScrollView {
           VStack(alignment: .center, spacing: 20) {
                Text(quiz.questions[currentQuestionIndex].text)
                   .font(.headline)
                   .padding(.top, -5)
               
               VStack(alignment: .leading, spacing: 20) {
                   ForEach(quiz.questions[currentQuestionIndex].answers) { answer in
                       Button(action: {
                           answerButtonTapped(answer)
                       }) {
                           Text(answer.text)
                               .frame(maxWidth: .infinity)
                               .padding()
                               .background(getButtonColor(answer))
                               .foregroundColor(.white)
                               .cornerRadius(10)
                       }
                   }
               }
               .padding()
           }
            
            Spacer()
            
            if showAnswers {
                Text("Selected answer: \(selectedAnswer?.text ?? "")")
                    .foregroundColor(getAnswerColor(selectedAnswer))
                
                Button(action: nextQuestion) {
                    Text(currentQuestionIndex < quiz.questions.count - 1 ? "Next Question" : "Finish Quiz")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                .disabled(selectedAnswer == nil)
            }
            
            if quizEnded {
                Text("Quiz ended. Correct answers: \(correctAnswersCount)")
                    .font(.headline)
                    .padding(.bottom, 45)
            }
        }
        .padding()

               .onChange(of: currentQuestionIndex) { _ in
                   resetQuizState()
               }
               .onDisappear {
                   onQuizCompletion(quizEnded)
               }
           }
           
           func answerButtonTapped(_ selectedAnswer: Answer) {
               self.selectedAnswer = selectedAnswer
               showAnswers = true
               
               if selectedAnswer.isCorrect {
                   correctAnswersCount += 1
               }
           }
           
           func getButtonColor(_ answer: Answer) -> Color {
               if showAnswers {
                   if answer.isCorrect {
                       return .green
                   } else if answer == selectedAnswer {
                       return .red
                   }
               }
               return .blue
           }
           
           func getAnswerColor(_ answer: Answer?) -> Color {
               if let selectedAnswer = selectedAnswer {
                   if selectedAnswer.isCorrect {
                       return .green
                   } else {
                       return .red
                   }
               }
               return .black
           }
           
           func nextQuestion() {
               if currentQuestionIndex < quiz.questions.count - 1 {
                   currentQuestionIndex += 1
               } else {
                   // Quiz ended
                   quizEnded = true
               }
           }
           
           func resetQuizState() {
               selectedAnswer = nil
               showAnswers = false
           }
       }

       struct Quiz {
           let questions: [Question]
       }

       struct Question {
           let text: String
           let answers: [Answer]
       }

       struct Answer: Identifiable, Equatable {
           let id = UUID()
           let text: String
           let isCorrect: Bool
       }

       extension Collection {
           subscript(safe index: Index) -> Element? {
               return indices.contains(index) ? self[index] : nil
           }
       }
