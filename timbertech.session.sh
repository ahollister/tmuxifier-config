session_root "~/Dev/AmericanEagle/TIMBERTECH"

if initialize_session "timbertech"; then

    new_window "everything"
    run_cmd "nvim ./"

fi

finalize_and_go_to_session
