session_root "~/Dev/quicknotes"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "quicknotes"; then

  new_window "notes"
  run_cmd "nvim ./"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
