
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

@browser.textarea(class: 'element').focus

@browser.file_field.set('path_to_file')

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
@browser.checkbox(index: 1).clear
==> exists?, set, set?

@browser.radio(id: "optYesclient").click
@browser.radio(name: "sex", value:'1').click
==> exists?, set, set?

@browser.select_list(id: 'day').select_value('1')
==> select('x'), selected_options

@browser.link(text: 'Google Forms').wait_until_present(2).click
@browser.link(text: 'Google Forms').present?
@browser.link(text: 'Google Forms').wait_while_present # espera desaparecer
==> exists?, click

@browser.alert.ok # confirma o alerta.
@browser.alert.text # pega o texto de um alerta
@browser.alert.close # fecha o alerta.
@browser.alert.exists? # verifica se o alerta existe.

@browser.frame(:id => 'FCCBMain').frameset.frameset.frame(:id => 'MainLeft').id

@browser.window(title: ‘annoying popup’) do
 @browser.button(id: ‘field’).send_keys “teste”
 @browser.button(id: ‘close’).click
 browser.title # => “Titulo da Segunda janela”
end

Watir::Wait.until(timeout: 30) { browser.title == 'Page XXX'}

https://medium.com/@reiload_88128/dicas-tips-watir-9c8750edc74e