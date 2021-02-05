require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automates links" do
  it "clicks all links" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://links.email.spectrum.com/servlet/MailView?ms=MzMwMzQzNTgS1&r=Mzk2ODM4NTcyMzI3S0&j=MTg4MzI0MTI2OQS2&mt=1&rt=0"

    header_logo = driver.find_element(name:'Spectrum_logo')
    hero = driver.find_element(css: 'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(1) > td > a')
    header_logo.click
    hero.click

    blackish = driver.find_element(name:'Blackish')
    sistas = driver.find_element(name: 'Tyler_Perry_Sistas')
    color_purple = driver.find_element(name:'The_Color_Purple')
    fences = driver.find_element(name:'Fences')
    black_panther = driver.find_element(name:'Black_Panther')
    blackkklansman = driver.find_element(name:'BlacKkKlansman')
    blackish.click
    sistas.click
    color_purple.click
    fences.click
    black_panther.click
    blackkklansman.click

    watch_now_cta = driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr > td > a > img.noMo')
    watch_now_cta.click

    phone_image = driver.find_element(name:'Phone_image')
    explore_btn = driver.find_element(name:'CTA_Start_Exploring')
    phone_image.click
    explore_btn.click

    facebook = driver.find_element(name:'www_facebook_com_Spectrum_')
    twitter = driver.find_element(name: 'twitter_com_getspectrum_')
    ig = driver.find_element(name: 'www_instagram_com_getspectrum_')
    yt = driver.find_element(name:'www_youtube_com_c_getspectrum')
    facebook.click
    twitter.click
    ig.click
    yt.click

    footer_logo = driver.find_element(name:'footer_Spectrum_logo')
    footer_logo.click

    view_online = driver.find_element(name:'ClickToViewHtml_SPCLICKTOVIEW')
    privacy_policy = driver.find_element(name:'www_spectrum_com_policies_your_priv')
    view_online.click
    privacy_policy.click

    driver.quit

  end
end



describe "automates modules" do
  it "checks for all modules" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://links.email.spectrum.com/servlet/MailView?ms=MzMwMzQzNTgS1&r=Mzk2ODM4NTcyMzI3S0&j=MTg4MzI0MTI2OQS2&mt=1&rt=0"

    #hero
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(3)').displayed?
    driver.find_element(css: 'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(4)').displayed?
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(5)').displayed?

#show icons
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(1)').displayed?
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(2)').displayed?

#app module
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(5) > td > table > tbody > tr
').displayed?

#footer
    driver.find_element(css:'body > table > tbody > tr > td > table > tbody > tr:nth-child(6)').displayed?
    driver.quit
  end
end
