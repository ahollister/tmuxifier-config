session_root "~/Local Sites/playground/app/public/"

if initialize_session "playground"; then

    new_window "WordPress"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "git status"
    select_pane 0 

fi

finalize_and_go_to_session
