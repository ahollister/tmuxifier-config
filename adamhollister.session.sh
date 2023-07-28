session_root "~/Dev/personal/adamhollister2021/"

if initialize_session "adamhollister"; then

  new_window "NextJS"
  run_cmd "nvim ./"
  split_h 20
  run_cmd "pwd && git status"
  split_v 50
  run_cmd "npm i && npm run dev"
  select_pane 1

fi

finalize_and_go_to_session
