# AUTOMATIZA��O DE PRs

## Antes de tudo
### Instalar a cli do github
   Antes de come�ar a usar o script, � necess�rio instalar a cli do github: <br>
   `sudo snap install gh` <br>
   Essa cli � a que suporta os comandos do github via shell. <br>


### Mover o .sh para o diretorio raiz do manager
   � necess�rio mover o arquivo .sh para o diret�rio raiz do manager. A �rvorvore de diret�rios raiz do manager deve ficar assim: <br>

   |- GKT-APP-MANAGER  <br>
   |---- APP <br>
   |---- |---- <br>
   |---- GLOBAL <br>
   |---- |---- <br>
   |---- README.md <br>
   |---- bash_git_manager.sh <br>


### Mudar a permiss�o do arquivo
   � necess�rio dar permiss�o de execu��o ao arquivo .sh <br>
   `chmod +x bash_git_manager.sh` <br>
   obs: � necess�rio estar dentro do diretorio de onde o script est�, obviamente. <br>


## Inputar os seus dados no script
### TOKEN
   Na linha 13 coloque seu token do github no lugar de <seu_token> <br>
   antes: <br>
   `gh auth login --with-token <seu_token>` <br>
   depois: <br>
   `gh auth login --with-token 596d642eedaf6449d9b5cbd74c150dccb64f689d` <br>


### Alterar o nome do seu usu�rio do github
   Na linha 9 deve ser inputado o seu nome de usu�rio <br>
   Esse nome de usu�rio � o mesmo que aparece na sua url do github, por exemplo: <br>
   `https://github.com/guilhermesimoes-kabum/` <br>
   O nome que deve ser inputado nas linhas mensionadas � o `guilhermesimoes-kabum` <br>

   antes: <br>
   `user_name=<seu_nome>` <br>

   depois: <br>
   `user_name='guilhermesimoes-kabum'` <br>

## Como usar
   Simplesmente no diret�rio raiz do manager, rode o seguinte comando: <br>
   `./bash_git_manager.sh`

   Ele vai rodar os testes do sistema. Caso algum falhe miseravelmente, ele n�o vai deixar voc� abrir a PR 

   Ele vai te pedir um t�tulo da PR e um Body: <br>
   <img src="./imagens_readme/exemplo_mensagens.png"/>

   Depois que vc inputar o t�tulo e o body, ele vai te devolver as urls das prs abertas: <br>
   <img src="./imagens_readme/pr_abertas.png"/>
