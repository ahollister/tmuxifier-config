session_root "~/Local Sites/playground/app/public/"

if initialize_session "playground"; then

    new_window "WordPress"
    run_cmd "nvim ./"
    split_h 20
    run_cmd "pwd"
    select_pane 0 

fi

finalize_and_go_to_session
