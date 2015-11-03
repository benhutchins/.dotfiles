if [ -n `which node` ]; then
  NODE_PATH=/usr/local/lib/node_modules
fi

# Node Version Manager (nvm)
if [ -e "/usr/local/opt/nvm/nvm.sh" ]; then
  export NVM_DIR=~/.nvm
  source /usr/local/opt/nvm/nvm.sh
fi
