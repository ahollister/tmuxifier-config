session_root "~/Dev/AmericanEagle/BAUER"

# $1 Project location. Can be relative to session_root or absolute.
# $2 Extra command for second pane (optional).
goto_project_and_load_status() {
    run_cmd "cd $1 && nvim ./"
    split_h 40
    run_cmd "cd $1 && git status"
    if [ -z "$2" ]
    then
        :
    else
        run_cmd "$2"
    fi
    select_pane 0
}

if initialize_session "bauer"; then

    new_window "uk-content-gql"
    goto_project_and_load_status() "uk-content-gql"

    new_window "uk-content-ui-templates"
    goto_project_and_load_status() "uk-content-ui-templates"

    new_window "uk-content-grazia"
    goto_project_and_load_status() "uk-content-grazia"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
