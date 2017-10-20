
# post-receive hook
post_receive_hook = $git_init_dir/hooks/post-receive
cat>$post_receive_hook<<EOF
unset GIT_DIR
deploy_dir=$git_deploy_dir
git pull origin master
EOF
chmod +x $post_receive_hook
