session_root "~/Local Sites/aap/app/public/"

if initialize_session "aap"; then

    new_window "WP"
    run_cmd "nvim ./"
    split_h 35
    run_cmd "pwd && git status"
    split_v 50
    run_cmd "npm i && composer install && npm run watch"
    select_pane 0

fi

finalize_and_go_to_session
