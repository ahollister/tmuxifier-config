session_root "~/Local Sites/frontier/app/public/"

if initialize_session "frontier"; then

    new_window "wp"
    run_cmd "nvim ./"
    split_h 20
    run_cmd "pwd && git status"
    select_pane 0

fi

finalize_and_go_to_session
