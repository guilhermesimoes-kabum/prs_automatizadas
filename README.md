### AUTOMATIZA��O DE PRs

## Antes de tudo
# Instalar a cli do github
   Antes de come�ar a usar o script, � necess�rio instalar a cli do github:
   `sudo snap install gh`
   Essa cli � a que suporta os comandos do github via shell.


# Mover o .sh para o diretorio raiz do manager
   � necess�rio mover o arquivo .sh para o diret�rio raiz do manager. A �rvorvore de diret�rios raiz do manager deve ficar assim:

   |- GKT-APP-MANAGER 
   |---- APP
   |---- |----
   |---- GLOBAL
   |---- |----
   |---- README.md
   |---- bash_git_manager.sh


# Mudar a permiss�o do arquivo
   � necess�rio dar permiss�o de execu��o ao arquivo .sh
   `chmod +x bash_git_manager.sh`
   obs: � necess�rio estar dentro do diretorio de onde o script est�, obviamente.


## Inputar os seus dados no script
# TOKEN
   Na linha 18 coloque seu token do github no lugar de <seu_token>
   antes:
   `gh auth login --with-token <seu_token>`
   depois:
   `gh auth login --with-token 596d642eedaf6449d9b5cbd74c150dccb64f689d`


# Alterar o nome do seu usu�rio do github
   Na linha 19, 23 e 24 deve ser inputado o seu nome de usu�rio
   Esse nome de usu�rio � o mesmo que aparece na sua url do github, por exemplo:
   `https://github.com/guilhermesimoes-kabum/`
   O name que deve ser inputado nas linhas mensionadas � o `guilhermesimoes-kabum`

   antes:
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head <seu_usuario>:$branch_name; `
   depois:
   `gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head guilhermesimoes-kabum:$branch_name; `

   obs: isso deve ser feito na linha 19, 23 e 24
