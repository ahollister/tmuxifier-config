session_root "~/Dev/AmericanEagle/CLH"

if initialize_session "christian-liberty-homeschool"; then

  new_window "email-templates"
  run_cmd "cd email-templates && nvim ./"

  split_h 40
  run_cmd "cd email-templates && git status"

  select_pane 0

fi

finalize_and_go_to_session
