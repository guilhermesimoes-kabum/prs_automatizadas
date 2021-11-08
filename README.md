### AUTOMATIZAÇÃO DE PRs

## Antes de tudo
# Instalar a cli do github
   Antes de começar a usar o script, é necessário instalar a cli do github:
   `sudo snap install gh`
   Essa cli é a que suporta os comandos do github via shell.


# Mover o .sh para o diretorio raiz do manager
   É necessário mover o arquivo .sh para o diretório raiz do manager. A árvorvore de diretórios raiz do manager deve ficar assim:

   |- GKT-APP-MANAGER 
   |---- APP
   |---- |----
   |---- GLOBAL
   |---- |----
   |---- README.md
   |---- bash_git_manager.sh


# Mudar a permissão do arquivo
   É necessário dar permissão de execução ao arquivo .sh
   `chmod +x bash_git_manager.sh`
   obs: é necessário estar dentro do diretorio de onde o script está, obviamente.


## Inputar os seus dados no script
# TOKEN
   Na linha 18 coloque seu token do github no lugar de <seu_token>
   antes:
   `gh auth login --with-token <seu_token>`
   depois:
   `gh auth login --with-token 596d642eedaf6449d9b5cbd74c150dccb64f689d`


# Alterar o nome do seu usuário do github
   Na linha 19, 23 e 24 deve ser inputado o seu nome de usuário
   Esse nome de usuário é o mesmo que aparece na sua url do github, por exemplo:
   `https://github.com/guilhermesimoes-kabum/`
   O name que deve ser inputado nas linhas mensionadas é o `guilhermesimoes-kabum`

   antes:
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head <seu_usuario>:$branch_name; `
   depois:
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head guilhermesimoes-kabum:$branch_name; `

   obs: isso deve ser feito na linha 19, 23 e 24
