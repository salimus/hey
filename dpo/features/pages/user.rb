class UserPage < Browser



  def logged_in?
    logged_in_element.exists?
  end

  def loaded?
    @browser.title == "Your Profile"
  end

  private

  def logged_in_element
    @browser.div(:id => "logged-in")
  end
end