Feature: As uma pessoa,
	I want to me cadastrar no sistema, 
	So that eu possa participar da comunidade como um todo

Scenario[GUI] : Erro ao Cadastrar no sistema com um usu�rio j� existente

Given eu estou na tela de Login 
AND preenchi o e-mail com um usu�rio j� existente na base
When eu clico �Cadastrar�
Then Uma mensagem �Usu�rio j� cadastrado� � mostrada na tela


Scenario[GUI]: Falha ao logar no sistema com usuario nao cadastrado
Given eu estou na tela de Login 
AND eu preenchi o e-mail com um e-mail que n�o est� cadastrado no sistema, e preenchi o campo de senha
When eu clico �Logar�
Then Uma mensagem de erro �Usu�rio n�o cadastrado� � mostrada na tela.


Scenario: Colocar dados incompat�veis
Given eu sou uma pessoa
And nao sou cadastrado
When coloco meus dados
And aperto no botao "cadastrar"
Then o sistema n�o permite o cadastro do usu�rio


Scenario: Cadastrar no sistema com sucesso atrav�s do e-mail

Given eu estou na tela de Login 
AND preenchi o e-mail e senha corretamente
When eu clico �Cadastrar�
Then O sistema ir� adicionar um novo User ao sistema


