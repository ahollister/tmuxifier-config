session_root "~/Dev/freelance/survey-solutions/map-quote-tool"

if initialize_session "survey-solutions"; then

    new_window "NextJS + TypeScript"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "npm i && npm run dev"
    split_v 50
    run_cmd "git status"
    select_pane 0

fi

finalize_and_go_to_session
