module Emslogin

  def emslogin
   p @browser
  end

  def ProductsServices
    p @browser.link(:text=> 'Products & Services')
  end

  def MyAccount
    p @browser.a(:text=> 'My Account')
  end

  def loginButton
     @browser.a(:text=> 'Login')
  end

  def SingtelRewards

    begin
      sleep(2)
      @browser.a(:text=> 'Singtel Rewards')
    rescue Exception => e
      puts e.message
    end
  end

  def ViewAllRewards
    @browser.a(:id=> 'r-85')
    # retried = 0
    # begin
    #       sleep(2)
    #       @browser.a(:id=> 'r-85')
    #       # @browser.a(:text=> 'View All Rewards')
    # rescue Exceptions => e
    #   if @browser.image(:id, "LPMcloseButton-1535114659925-21").exists?
    #     retried += 1
    #       @browser.image(:id, "LPMcloseButton-1535114659925-21").click
    #         retry
    #   else
    #     raise e
    #   end
    # end

  end

  def dropdownSelect
    @browser.select_list(:id=> 'select-brand')
    # retried = 0
    # begin
    #   sleep(2)
    #   @browser.select_list(:id=> 'select-brand')
    #     # @browser.a(:text=> 'View All Rewards')
    # rescue Exceptions => e
    #   if @browser.image(:id, "LPMcloseButton-1535114659925-21").exists?
    #     retried += 1
    #     @browser.image(:id, "LPMcloseButton-1535114659925-21").click
    #     retry
    #   else
    #     raise e
    #   end
    # end

  end


end