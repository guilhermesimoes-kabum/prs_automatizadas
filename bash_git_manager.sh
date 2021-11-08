#!/bin/bash

echo "titulo da pr: "
read titulo_pr

echo "body da pr: "
read body_da_pr 

branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
git_remote_url=$(git remote get-url origin); 

gh auth login --with-token <seu_token> 
url_qa=$(gh pr create --title "$titulo_pr" --body "$body_da_pr" --base qa --head <seu_usuario>:$branch_name)

echo "Pull request pra qa => $url_qa"

body_da_pr_master_e_stg="qa => $url_qa <br> $body_da_pr";

url_stg=$(gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base stg --head <seu_usuario>:$branch_name; )
echo "Pull request pra stg => $url_stg"

url_master=$(gh pr create --title "$titulo_pr" --body "$body_da_pr_master_e_stg" --base master --head <seu_usuario>:$branch_name; )
echo "Pull request pra master => $url_master"
