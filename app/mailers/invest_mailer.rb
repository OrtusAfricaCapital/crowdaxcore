class InvestMailer < ApplicationMailer
    
    def invest_created( investor_name, investor_mail, venuture_name, type_of_investment, shares_purchased, amount_invested)
        
        mail(to: "tech@ortusafrica.com",
            from: "tech@ortusafrica.com",
            cc: ["venture@ortusafrica.com", "klegesi@ortusafrica.com"],
            subject:  "Investment of $" + amount_invested + " invested in " + venuture_name, 

            body:  "Details of investment: - \n\n"+ 
                    investor_name + " would like to invest an " +
                    "amount of $" + amount_invested + " dollars" +
                    " in a venture known as " + venuture_name +
                    " on Crowdax " + 
                    "\n\n Contact'em on "+ investor_mail + 
                    "\n\n Type of investment : -  " + type_of_investment +
                    "\n\n Shares sold: -  " + shares_purchased 
          
        )
    end  
end
