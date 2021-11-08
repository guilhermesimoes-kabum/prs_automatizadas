# AUTOMATIZAÇÃO DE PRs

## Antes de tudo
### Instalar a cli do github
   Antes de começar a usar o script, é necessário instalar a cli do github: <br>
   `sudo snap install gh` <br>
   Essa cli é a que suporta os comandos do github via shell. <br>


### Mover o .sh para o diretorio raiz do manager
   É necessário mover o arquivo .sh para o diretório raiz do manager. A árvorvore de diretórios raiz do manager deve ficar assim: <br>

   |- GKT-APP-MANAGER  <br>
   |---- APP <br>
   |---- |---- <br>
   |---- GLOBAL <br>
   |---- |---- <br>
   |---- README.md <br>
   |---- bash_git_manager.sh <br>


### Mudar a permissão do arquivo
   É necessário dar permissão de execução ao arquivo .sh <br>
   `chmod +x bash_git_manager.sh` <br>
   obs: é necessário estar dentro do diretorio de onde o script está, obviamente. <br>


## Inputar os seus dados no script
### TOKEN
   Na linha 18 coloque seu token do github no lugar de <seu_token> <br>
   antes: <br>
   `gh auth login --with-token <seu_token>` <br>
   depois: <br>
   `gh auth login --with-token 596d642eedaf6449d9b5cbd74c150dccb64f689d` <br>


### Alterar o nome do seu usuário do github
   Na linha 19, 23 e 24 deve ser inputado o seu nome de usuário <br>
   Esse nome de usuário é o mesmo que aparece na sua url do github, por exemplo: <br>
   `https://github.com/guilhermesimoes-kabum/` <br>
   O name que deve ser inputado nas linhas mensionadas é o `guilhermesimoes-kabum` <br>

   antes: <br>
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head <seu_usuario>:$branch_name; ` <br>
   depois: <br>
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head guilhermesimoes-kabum:$branch_name; ` <br>

   obs: isso deve ser feito na linha 19, 23 e 24 <br>


## Como usar
   Simplesmente no diretório raiz do manager, rode o seguinte comando: <br>
   `./bash_git_manager.sh`

   Ele vai te pedir um título da PR e um Body:
