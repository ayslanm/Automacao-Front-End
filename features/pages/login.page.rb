class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :id, "username"
    element :passwordField, :id, "password"
    element :loginButton, :xpath, "//*[@id='organic-div']/form/div[3]/button"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end

end