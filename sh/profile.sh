###############################################################
# => environment 
###############################################################
export NODE_PATH="/usr/local/lib/node_modules"
export WORKON_HOME="$HOME/envs"
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    # Source virtualenvwrapper if there is one
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [[ -d /usr/libexec/java_home ]]; then
    export JAVA_HOME="/usr/libexec/java_home"
fi
if [[ -d /usr/java/latest ]] || [[ -h /usr/java/latest ]]; then
    export JAVA_HOME="/usr/java/latest"
fi

if [[ -d "$HOME"/.ec2 ]]; then
    export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
    export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
    export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
fi

###############################################################
# => path 
###############################################################
export PATH="$HOME/bin:$PATH"
export PATH="/opt/local/bin:$PATH"
export PATH="/opt/local/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/Cellar/ctags/5.8/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
