Manual de instalação do MCLocadora v1.0 beta

De posse do programa após o download no site www.mundoconecto.eti.br execute o arquivo setup.exe.
Na tela que abriu clique na opção Next, na tela seguinte clique novamente em Next.
Na tela que segue você tem um texto com o contrato que será fechado entre você e a pessoa física responsável pela produção do software, leia atentamente.
Após a leitura caso concorde com o acordo selecione a opção:
I accept the e license agreement.
Após selecionada esta opção o botão Next será habilitado, clique nele. Na próxima tela clique novamente em Next e depois clique novamente em Next e enfim em Install.
Se tudo ocorreu bem após a instalação será apresentada uma tela com a opção Launch the program marcada.
Não desmarque esta opção e clique em Finish.
Caso o programa MCLocadora v1.0 beta não abra automáticamente após a instalação, tente executa-lo clicando no atalho criado no seu Desktop “Área de trabalho” ou no atalho criado no menu Iniciar/Programas/MCLocadora/MCLocadora.
Se a tela apresentada após a instalação foi a tela da imagém acima, parabéns a instalação foi concluída com exito.
Na tela acima os campos:

Endereço do servidor: reprenta o caminho na rede ao qual foi instalado o banco de dados.
Os endereços localhost e 127.0.0.1 representam a máquina onde você está. Caso o servidor esteja instalado em uma outra máquina você deve informar o endereço dela.
Este endereço pode ser o IP “192.168.0.1 este ip é somente um exemplo” ou mesmo o nome do computador “MCLocadora”. Uma maneira de se descobrir o onme do computador que você está tentando acessar é, clicar com o botão direito do mouse em cima do ícone do Meu Computador na área de trabalho, em seguida em propriedades. Na tela que surgiu clique na aba identificação de rede “Segunda aba”.

Usuário administrador: O usuário não tem de ser o administrador do sistema, mas tem de possuir privilégios suficientes para criar uma base de dados e tabelas.Caso para você este assunto seja complexo use o usuário que você criou ao instalar o banco de dados.
Senha: senha do usuário de banco de dados informado.
Porta: a porta padrão já vem sugerida pelo sistema, caso o banco de dados tenha sido instalado usando uma outra porta entre em contato com seu administrador de banco de dados e peça esta informação.
Após o preenchimento correto de todos os dados clique no botão Executar.
Alguns problemas podem ocorrer na tentativa de fazer a conexão ao banco de dado.
Caso tenha sido exibida a mensagem (Não foi possivel completar a conexão.) verifique os seguintes itens listados abaixo.
•	Nome de usuário e senha podem estar incorretos;
•	Tenha certesa de que o MySql esteja iniciado “Para saber se o MySql está iniciado fica um Semaforo ao lado do relógio, O semaforo tem de estar verde”. 
•	Esperimente deixar a senha em branco e fazer a operação novamente;
•	Esperimente trocar o valor do campo Porta para o número 0;
•	Esperimente colocar o nome do computador onde o MySql está instalado e faça as opções anteriores novamente;
•	Se tudo antes falhou, vá até o computador onde foi instalado o MySql, execute o prompt de comandos “DOS” que fica em:
•	No windows 98: Menu Iniciar>Programas>DOS
•	No windows 2000: Menu Iniciar>Programas>Acessórios> Prompt de comando
•	No windows XP: Menu Iniciar>Todos os Programas>Acessórios> Prompt de comando

Ao clicar no local indicado será aberta uma tela como na imagem indicada acima.
Nesta tela digite a seginte sequencia de comandos para abrir o mysql “para executar o comando basta pressionar a tecla enter”.
•	Cd\
•	CD MySql
•	CD bin
•	Mysql
•	Caso seja exibida uma mensagem como a seguir, ERROR 1045: Access denied for user: 'ODBC@localhost' (Using password: NO)  siguinifica que seu MySql prcisa ser iniciado com o nome de usuário e senha e que você provavelmente se esqueceu da senha.
Para recuperar a senha vá até “c:\windows\my.ini” abra o arquivo e veja as duas últimas linhas.
Estas linhas indicam o nome de usuário e senha respectivamente.
De posse do nome de usuário e senha vá ao sistema MCLocadora e tente novamente fazer a conexão, agora com o usuário e senha corretos.
•	Para acessar o MySql pelo pronpt de comando com usuario e senha basta digitar, mysql –u Nome do Usuario –p, e logo em seguida a senha, caso isso não funcione tente fazer o mesmo mas deixando a senha me branco.
O que nós acabamos de fazer é abrir o gerenciador de banco de dados pelo DOS, neste momento seu pronpt de comandos deve ter ficado como na imagem abaixo.

•	Agora digite a seguinte linha de comando: GRANT ALTER, CREATE, CREATE TEMPORARY TABLES, DELETE, DROP, EXECUTE, FILE, INDEX, INSERT, LOCK TABLES, PROCESS, REFERENCES, RELOAD, REPLICATION CLIENT, REPLICATION SLAVE, SELECT, SHOW DATABASES, SHUTDOWN, SUPER, UPDATE ON *.* TO 'MCLocadora'@'%' WITH GRANT OPTION;
•	Pressione a tecla enter para poder executar o comando em seguida digite COMMIT; e pressione enter novamente. O que você acabou de fazer é criar um novo usuário no mysql e este usuário se chama MCLocadora.
•	Agora volte para o sistema MCLocadora v1.0 beta.
•	Caso a tela que esteja sendo mostrada seja uma tela de login clique em sair e abra o sistema novamente.
•	Ok na tela de configuração você vai usar como usuário administrador MCLocadora e vai deixar a senha em branco o endereço do servidor será o nome do computador onde foi instalado o MySql, tudo conforme foi descrito na faze de instalação.

Muito bem agora que tudo mais foi resolvido a tela mostrada será como na figura abaixo.
Esta tela representa o seu primeiro cadastro, onde você tem de informar oo principais dados de sua locadora.
Ao terminar de preencher os dados lique no botão gravar e parabéns você concluíu a instalação do sistema de automação de locadoras de distribuição free.

