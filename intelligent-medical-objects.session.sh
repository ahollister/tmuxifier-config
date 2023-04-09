session_root "~/Dev/AmericanEagle/IMO"

if initialize_session "intelligent-medical-objects"; then

    new_window "Cost Calculator"
    run_cmd "cd cost-calculator && nvim ./"
    split_h 40
    run_cmd "cd cost-calculator && npm i && npm run start"
    split_v 50
    run_cmd "cd cost-calculator && git status"
    select_pane 0

    new_window "Configurator"
    run_cmd "cd configurator && nvim ./"
    split_h 40
    run_cmd "cd configurator && npm i && npm run start"
    split_v 50
    run_cmd "cd configurator && git status"
    select_pane 0

    select_window 0

fi

finalize_and_go_to_session
