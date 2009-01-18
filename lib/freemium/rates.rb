module Freemium
  module Rates
    
    # returns the daily cost of this plan.
    def daily_rate(options = {})
      yearly_rate(options) / 365
    end

    # returns the yearly cost of this plan.
    def yearly_rate(options = {})
      rate(options) * 12
    end

    # returns the monthly cost of this plan.
    def monthly_rate(options = {})
      rate(options)
    end
    
    def paid?
      return false unless rate
      rate.cents > 0
    end    
    
  end
end