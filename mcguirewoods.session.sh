session_root "~/Local Sites/mcguirewoods/app/public"

if initialize_session "mcguirewoods"; then

    new_window "WP"
    run_cmd "nvim ./"
    split_h 20
    run_cmd "git status"
    select_pane 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
