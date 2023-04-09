session_root "~/Dev/AmericanEagle/PBI"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "pennsylvania-bar-institute"; then

    new_window "notes"
    run_cmd "cd notes && nvim ./"

fi

finalize_and_go_to_session
