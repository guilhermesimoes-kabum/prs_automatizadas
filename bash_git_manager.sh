#!/bin/bash

>>>>>>> parent of 9003e2f (saadlksahjfjdsahfldkjshfasdjafsh)
echo "titulo da pr: "
read titulo_pr

echo "body da pr: "
read body_da_pr 

user_name=<seu_nome>
branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
git_remote_url=$(git remote get-url origin); 

gh auth login --with-token <seu_token> 

#testes de nfe não podem falhar pra subir a pr
resultado_testes=`prove -r GLOBAL/cgi-local/module/NFE2 && prove -r GLOBAL/cgi-local/module/NFEAPI && prove -r ./GLOBAL/cgi-local/module/AnalisesInterna/ && prove -r ./GLOBAL/cgi-local/module/ConciliacaoPIX/t && prove -r ./GLOBAL/cgi-local/module/Manager/Repository && prove -r ./GLOBAL/cgi-local/module/RegrasAutoCaptura/t/`

if [[ $resultado_testes =~ 'Result: FAIL' ]]; then
	RED=`tput setaf 1`
	echo "${RED}OS TESTES FALHARAM. Favor corrigir antes de subir"
else
	url_qa=$(gh pr create --title "$titulo_pr" --body "$body_da_pr" --base qa --head $user_name:$branch_name)
	
	echo "Pull request pra qa => $url_qa"
	
	body_da_pr_master_e_stg="qa => $url_qa <br> $body_da_pr";
	
	url_stg=$(gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head $user_name:$branch_name; )
	echo "Pull request pra stg => $url_stg"
	
	url_master=$(gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base master --head $user_name:$branch_name; )
	echo "Pull request pra master => $url_master"
fi
