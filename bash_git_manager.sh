#!/bin/bash

#ANTES DE COMEÇAR INSTALE A CLI DO GITHUB
#sudo snap install gh
#
#Altere as permissões do arquivo
#chmod +x bash_git_manager.sh

echo "titulo da pr: "
read titulo_pr

echo "body da pr: "
read body_da_pr 

branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
git_remote_url=$(git remote get-url origin); 

gh auth login --with-token 596d642eedaf6449d9b5cbd74c150dccb64f689d
url_qa=$(gh pr create --title "$titulo_pr" --body "$body_da_pr" --base qa --head guilhermesimoes-kabum:$branch_name)

echo $url_qa

body_da_pr_master_e_stg="qa => $url_qa <br> $body_da_pr";

gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head guilhermesimoes-kabum:$branch_name; 
gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base master --head guilhermesimoes-kabum:$branch_name; 
