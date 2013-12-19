class HomePage < Browser
  URL = "http://desk.com"

  def open
    @browser.goto URL
    self
  end

  def login_as(user, pass)
    user_field.set user
    password_field.set pass

    login_button.click

    next_page = UserPage.new(@browser)
    Watir::Wait.until { next_page.loaded? }

    next_page
  end

  private

  def user_field
    @browser.text_field(:name => "user")
  end

  def password_field
    @browser.text_field(:name => "pass")
  end

  def login_button
    @browser.button(:id => "login")
  end
end