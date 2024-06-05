class HomePage < SitePrism::Page

    element :userName, :xpath, "//*[@id='ember26']/div[2]/div/div/div/div/div[1]/div[1]/p"
    element :navBarHome, :xpath, "//*[@id='global-nav']/div/nav/ul/li[1]"
    element :myIcon, :id, "ember15"

    def checkLoginSucessful
        expect(userName.text).to eql "Aluno na Universidade Federal de Pernambuco"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end

end