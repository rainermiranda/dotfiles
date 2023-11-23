neovim_git_url="https://github.com/neovim/neovim.git"
neovim_linux64_tar_gz="https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"

function nvim_check_version() {
    command -v nvim > /dev/null
    if [ ${?} -ne 0 ]; then
        echo "ERROR: Unable to locate nvim"
    else
        c_version=$(nvim -v |head -1|awk -F" " '{print $2}')
        l_version=`git -c 'versionsort.suffix=-' ls-remote --exit-code --refs --sort='version:refname' --tags ${neovim_git_url} '*.*.*' | tail --lines=1 | cut --delimiter='/' --fields=3`
        if [ ${c_version} != ${l_version} ]; then
            echo "The local NVIM version (${c_version}) is different from the latest version (${l_version})"
        else
            echo "NVIM is up to date (${c_version} = ${l_version})"
        fi
    fi
}

function nvim_update() {
    command -v nvim > /dev/null
    if [ ${?} -ne 0 ]; then
        echo "ERROR: Unable to locate nvim"
    else
        echo "Updating neovim... please enter sudo password when asked"
        cd /tmp && wget ${neovim_linux64_tar_gz}
        sudo rm -rf /usr/local/nvim/ && sudo tar -C /usr/local/ -xzf nvim-linux64.tar.gz && sudo mv /usr/local/nvim-linux64 /usr/local/nvim
        nvim_check_version
    fi
}
