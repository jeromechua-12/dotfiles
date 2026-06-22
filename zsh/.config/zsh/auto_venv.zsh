# function to activate/deactivate python virtual environment
function auto_venv_trigger() {
    # declare possible virtual env names
    local venv_names=(".venv" "venv")
    local found_venv=""

    # check if venv exists in pwd
    for venv in "${venv_names[@]}"; do
        if [[ -d "${PWD}/${venv}" ]]; then
            found_venv="${PWD}/${venv}"
            break
        fi
    done

    if [[ -n "${found_venv}" ]]; then
        # check if existing venv conflict with venv found.
        if [[ "${VIRTUAL_ENV}" != "${found_venv}" ]]; then
            if [[ -n "${VIRTUAL_ENV}" ]]; then
                deactivate
            fi
            # activate venv at pwd
            source "${found_venv}/bin/activate"
        fi
        # deactivate if change directory except for child directory
    elif [[ -n "${VIRTUAL_ENV}" ]]; then
        if [[ "${PWD}" != "${VIRTUAL_ENV:h}"* ]]; then
            deactivate
        fi
    fi
}

# reigster hook
autoload -U add-zsh-hook
add-zsh-hook chpwd auto_venv_trigger

# run function
auto_venv_trigger
