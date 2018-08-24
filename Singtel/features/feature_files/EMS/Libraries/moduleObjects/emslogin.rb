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
    @browser.a(:text=> 'View All Rewards')
    # begin
    #   sleep(2)
    #   @browser.a(:text=> 'View All Rewards')
    # rescue Exception => e
    #   # if(@browser.img(:class=> 'LPMcloseButton').present?)
    #   #   @browser.img(:class=> 'LPMcloseButton').click
    #   #   retry
    #   # end
    #   puts e.message
    # end
  end



end