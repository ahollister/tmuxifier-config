session_root "~/Dev/AmericanEagle/BEEF"

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

if initialize_session "beef"; then

    new_window "cook-timer"
    goto_project_and_load_status "grill-to-perfection"

    new_window "recipes"
    goto_project_and_load_status "recipes"

    new_window "beef-app-configuration"
    goto_project_and_load_status "beef-app-configuration"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
