function is_nvim_present() {
    command -v nvim > /dev/null
    if [ ${?} -ne 0 ]; then
        echo "ERROR: nvim is not installed"
        return 1
    fi
}

function get_nvim_version() {
    is_nvim_present
    if [ ${?} -eq 0 ]; then
        nvim_version=$(nvim -v |head -1|awk -F"v" '{print $2}')
        echo ${nvim_version}
    fi 
}
