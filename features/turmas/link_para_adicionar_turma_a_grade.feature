#language: pt
#encoding: utf-8

Funcionalidade: Link na página da disciplina para adicioná-la à grade horária
  Como usuário autenticado
  Para que eu possa mais facilmente adicionar uma turma à minha grade
  Eu quero poder adicionar uma turma à minha grade horária pela página da turma

  Cenário: Adicionar Turma a grade a partir da página da turma
    Dado que eu tenha me cadastrado e me autenticado
    Dado  que eu tenha uma matéria criada com os atributos:
      |code   |116327                 |
      |name   |ORGANIZAÇÃO DE ARQUIVOS|
      |credits|002 002 000 004        |
      |area   |AC                     |
    E que eu tenha uma turma criada com os atributos:
      |name      |A                      |
      |course    |ORGANIZAÇÃO DE ARQUIVOS|
      |professor |PEDRO DE AZEVEDO BERGER|
      |schedule  |Terça - 14h            |
      |schedule  |Quinta - 14h           |
    E que eu esteja na página de matérias
    E eu clicar no link para detalhes daquela matéria
    Quando eu clicar no link para detalhes dessa turma
    Então eu devo ver um botão que me permita adicionar a turma a grade horária


  Cenário: Adicionar Turma a grade a partir da página da diciplina
    Dado que eu tenha me cadastrado e me autenticado
    Dado  que eu tenha uma matéria criada com os atributos:
      |code   |116327                 |
      |name   |ORGANIZAÇÃO DE ARQUIVOS|
      |credits|002 002 000 004        |
      |area   |AC                     |
    E que eu tenha uma turma criada com os atributos:
      |name      |A                      |
      |course    |ORGANIZAÇÃO DE ARQUIVOS|
      |professor |PEDRO DE AZEVEDO BERGER|
      |schedule  |Terça - 14h            |
      |schedule  |Quinta - 14h           |
    E que eu esteja na página de matérias
    Quando eu clicar no link para detalhes daquela matéria
    Então eu devo ver um botão que me permita adicionar a turma a grade horária


  Cenário: Adicionar Turma não existente a grade a partir da página da diciplina
    Dado que eu tenha me cadastrado e me autenticado
    Dado  que eu tenha uma matéria criada com os atributos:
      |code   |116327                 |
      |name   |ORGANIZAÇÃO DE ARQUIVOS|
      |credits|002 002 000 004        |
      |area   |AC                     |
    E que eu esteja na página de matérias
    Quando eu clicar no link para detalhes daquela matéria
    Então eu não devo ver um botão que me permita adicionar a turma a grade horária
    E eu não devo ver um botão para clicar no link para detalhes dessa turma
