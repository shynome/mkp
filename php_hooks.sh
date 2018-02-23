
# post-receive hook
post_receive_hook=$git_init_dir/hooks/post-receive
echo $post_receive_hook
cat>$post_receive_hook<<EOF
#!/bin/sh

unset GIT_DIR
deploy_dir=$git_deploy_dir

cd \$deploy_dir
git pull 

echo "[ $git_init_dir ] 已部署到 [ \$deploy_dir ]"
EOF
chmod +x $post_receive_hook

source $current_dir/finished.sh
