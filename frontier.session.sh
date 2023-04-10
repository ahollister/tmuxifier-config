session_root "~/Local Sites/frontier/app/public/"

if initialize_session "frontier"; then

    new_window "wp"
    run_cmd "nvim ./"

fi

finalize_and_go_to_session
