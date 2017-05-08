When(/^I navigate to the login page on "([^"]*)" environment$/) do |env|


    page = 'http://fecske-dev.db.bme.hu/'
    if env.downcase.include?('dev')
        page = 'http://fecske-dev.db.bme.hu/'
    end
    visit(page)
end

When(/^I login with username (.*) and pass (.*)$/) do |uname, pass|
    find(:xpath, '//input[@placeholder="username"]').set(uname)
    find(:xpath, '//input[@placeholder="password"]').set(pass)
    find(:xpath, '//button[@type="submit"]').click
end

Then(/^I check if the (.*) page appears$/) do |role|
    if role.downcase.include?('admin')

        find('button', :text => 'Statisztikák', :match => :prefer_exact).click
        find('button', :text => 'Felhasználók', :match => :prefer_exact).click
        find('button', :text => 'Hirdetmények', :match => :prefer_exact).click
        find('button', :text => 'Mérések', :match => :prefer_exact).click
        find('button', :text => 'Beugrók', :match => :prefer_exact).click
        find('button', :text => 'SQL', :match => :prefer_exact).click

    elsif role.downcase.include?('demonstrator')

        find('button', :text => 'Demonstrátor', :match => :prefer_exact).click
        find('button', :text => 'Beugrók', :match => :prefer_exact).click

    elsif role.downcase.include?('corrector')

        find('button', :text => 'Javító', :match => :prefer_exact).click

    elsif role.downcase.include?('student')

        find('button', :text => 'Laborok', :match => :prefer_exact).click
    end
end

Then(/^I logout$/) do
    find(:xpath, '//button[@title="kijelentkezés"]').click
end

Then(/^I check the login form elements$/) do
    find('button', :text => 'Login with BME account', :match => :prefer_exact)
    find(:xpath, '//input[@placeholder="username"]')
    find(:xpath, '//input[@placeholder="password"]')
end

Then(/^I check the: (.*) (.*)$/) do |wrong, error_message|
    puts wrong
    find('div', :text => error_message, :match => :prefer_exact)
end

When(/^I click on "([^"]*)" button$/) do |string|
    find('button', :text => string, :match => :prefer_exact).click
end

Then(/^BME Auth page appears$/) do
    sleep(1)
    ##must be implemented by frontend/backend
end
