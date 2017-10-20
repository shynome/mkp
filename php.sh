#php deploy project init

git_init_base=D:/git
git_deploy_base=D:/www

git_init_dir=$git_init_base/$project_name
git_deploy_dir=$git_deploy_base/$project_name
echo $git_init_dir $git_deploy_dir 
git init --bare $git_init_dir
git clone $git_init_dir $git_deploy_dir

source $current_dir/php_hooks.sh
