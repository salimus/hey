class Site < Browser
  def home_page
    @home_page = HomePage.new(@browser)
  end

  def user_page
    @user_page = UserPage.new(@browser)
  end


  def close
    @browser.close
  end
end