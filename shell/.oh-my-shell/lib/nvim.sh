function is_nvim_present() {
    command -v nvim > /dev/null
    if [ ${?} -ne 0 ]; then
        return 1
    fi
}

function is_nvim_latest_version() {
    is_nvim_present
    if [ ${?} -ne 0 ]; then
        echo "ERROR: Unable to locate nvim"
        return 1
    fi
    c_version=$(nvim -v |head -1|awk -F" " '{print $2}')
    l_version=`git -c 'versionsort.suffix=-' ls-remote --exit-code --refs --sort='version:refname' --tags https://github.com/neovim/neovim.git '*.*.*' | tail --lines=1 | cut --delimiter='/' --fields=3`
    if [ ${c_version} != ${l_version} ]; then
        echo "The local NVIM version (${c_version}) is different from the latest version (${l_version})"
    else
        echo "NVIM is up to date (${c_version} = ${l_version})"
    fi
}

is_nvim_latest_version

