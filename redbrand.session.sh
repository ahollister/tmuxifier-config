session_root "~/Local Sites/redbrand/app/public/"

if initialize_session "redbrand"; then

    new_window "wp"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "git status"
    select_pane 0

fi

finalize_and_go_to_session
