# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Dev/personal/richfields"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "richfields"; then

  new_window "NextJS"
  split_h 40
  run_cmd "npm i && npm run dev"
  select_pane 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
