class VentureMailer < ApplicationMailer
        def venture_created( name, short_description, sector, traction, investment_stage, investment_amount_targetted, referred_by, approval_status)
            mail(to: "tech@ortusafrica.com",
                from: "tech@ortusafrica.com",
                #cc: ["venture@ortusafrica.com", "klegesi@ortusafrica.com"],
                subject:  "  New venture on crowdax : " + name , 
                body:  "Here are details of venture \n\n Name: \t" + name +
                        "\n\n Short Description: \t " + short_description +
                        "\n\n Sector: \t " + sector + 
                        "\n\n Traction: \t " + traction +
                        "\n\n Investment Stage: \t " + investment_stage + 
                        "\n\n Fund Target: \t " + investment_amount_targetted + 
                        "\n\n Referred_by: \t " + referred_by + 
                        "\n\n Approval status: \t " + approval_status  
              
            )
        end  
end
