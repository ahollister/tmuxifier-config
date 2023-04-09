session_root "~/Dev/AmericanEagle/AE/CRA-TS-starter"

if initialize_session "cra-ts-starter"; then

    new_window "main"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "npm i && npm start"
    split_v 50
    run_cmd "git status"
    select_pane 0

fi

finalize_and_go_to_session
