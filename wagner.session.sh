session_root "~/Local Sites/wagner-spray-tech/app/public/"

if initialize_session "wagner"; then

    new_window "WP"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "cd wp-content && git status"
    select_pane 0

fi

finalize_and_go_to_session
