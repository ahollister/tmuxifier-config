session_root "~/Dev/AmericanEagle/MECUM/mecum-frontend/"

if initialize_session "mecum"; then

    new_window "frontend"
    run_cmd "nvim ./"
    split_h 40
    run_cmd "git status"
    select_pane 0


    new_window "wp"
    run_cmd "cd ~/Local Sites/mecum/app/public/ && nvim ./"
    split_h 40
    run_cmd "cd ~/Local Sites/mecum/app/public/ && git status"
    select_pane 0

    select_window 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
