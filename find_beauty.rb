require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating finding beauty best sellers" do
  it "logins in finds best sellers and clicks on beauty" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://www.amazon.com/"

    driver.action.move_to(id:'nav-link-accountList')
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until{driver.find_element(css:'#nav-signin-tooltip > a > span').displayed?}
    driver.find_element(css:'#nav-signin-tooltip > a > span').click

    wait = Selenium::WebDriver::Wait.new(timeout: 20)
    wait.until{driver.find_element(id:'ap_email').displayed?}
    driver.find_element(id:'ap_email').send_keys('youremailhere@gmail.com')

    continue = driver.find_element(css: '#continue > span')
    continue.click

    wait = Selenium::WebDriver::Wait.new(timeout: 20)
    wait.until{driver.find_element(id:'ap_password').displayed?}
    driver.find_element(id:'ap_password').send_keys('mypassword1')

    signin = driver.find_element(css: '#auth-signin-button > span')
    signin.click

    best_sellers = driver.find_element(xpath:'/html/body/div[1]/header/div/div[4]/div[2]/div[2]/div/a[2]')
    best_sellers.click

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until{driver.find_element(css:'#zg_browseRoot > ul > li:nth-child(9) > a').displayed?}


    beauty = driver.find_element(css:'#zg_browseRoot > ul > li:nth-child(9) > a')
    beauty.click

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until{driver.find_element(id:'a-page').displayed?}

  end
end
