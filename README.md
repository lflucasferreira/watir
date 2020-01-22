
https://www.rubydoc.info/github/watir/watir-classic/Watir/Alert

@browser.goto "www.centauro.com.br/slogin"
@browser.url
@browser.cookies.clear

Localizadores:
id, name, tag_name, class, text, visible_text, data_type, aria_label, href, custom_attributes, label, index, visible

@browser.text_field(id: "lst-ib").set "Medium @gedersonChiquesi"
@browser.text_field(name: "Senha").set "123"
@browser.text_field(class:"box-TipoUser").set "37536617402@teste.com"
==> exists?, set, value

@browser.button(id: "btnK", value: 'OK').click
@browser.button(name: "btnK").click
@browser.button(class: "btn-entrar-login").click
@browser.button(text: 'Enviar').click
==> exists?, click

@browser.element(tag_name: 'div') # not recommended
@browser.p(class: "user-greeting-logout").text
@browser.div(class:"areatemplate_destaques_esquerda_inferior_globo_com_2016")
@browser.span(class: 'powered-by-text')
==> exists?, text

@browser.checkbox(value: '1.8.6').click
==> exists?, set, set?

@browser.radio(id: "optYesclient").click
@browser.radio(name: "sex", value:'1').click
==> exists?, set, set?

@browser.select_list(id: 'day')
==> select('x'), selected_options

@browser.link(text: 'Google Forms')
==> exists?, click