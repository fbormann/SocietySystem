Feature: As um usu�rio,
  I can criar, alterar, modificar e remover um Campo do meu Society
  so that eu posso administrar o meu society de forma coerente

  Scenario: Atualizar a lista de Campos assim que adicionar um novo
    Given que o usu�rio cadastrou um campo ao seu Society
    When clicar na imagem do seu society
    Then uma lista atualizada com todos os campos cadastrados deve aparecer na tela "Campos do Society X"

  Scenario[GUI]: Cadastrar Campo � Lista de Campos de um Society Espec�fico

    Given eu estou na tela de cadastro de Campos de um Society
    And eu preencho os dados corretamente
    When eu clico �Finalizar Cadastro�
    Then eu sou enviado � tela de Detalhes do Society e Uma mensagem de Sucesso � mostrada

  Scenario[GUI]: Cadastrar um mesmo campo duas vezes
    Given eu estou na tela cadastrar campo
    And preencho o nome do campo como campo �A�
    When clico em �cadastrar o campo�
    Then o sistema d� uma mensagem dizendo que o campo j� existe

  Scenario: Cadastrar Campo com dados insuficientes
    Given eu estou na tela de cadastrar campo
    And eu n�o preencho o nome do campo
    When clico em "cadastrar o campo"
    Then o sistem emite uma mensagem de erro