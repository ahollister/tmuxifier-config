session_root "~/Local Sites/kalmbach/app/public"

if initialize_session "astronomy"; then

    new_window "WP"
    run_cmd "nvim ./"
    split_h 20
    run_cmd "cd wp-content && npm i && npm run watch"
    split_v 50
    run_cmd "cd wp-content && git status"
    select_pane 0

fi

finalize_and_go_to_session
