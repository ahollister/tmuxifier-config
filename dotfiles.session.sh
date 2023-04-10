session_root "~/.config"

# $1 Project location. Can be relative to session_root or absolute.
# $2 Extra command for second pane (optional).
goto_project_and_load_status() {
    run_cmd "cd $1 && nvim ./"
    split_h 40
    run_cmd "cd $1 && git status"
    select_pane 0
}

if initialize_session "dotfiles"; then

    new_window "nvim"
    goto_project_and_load_status "nvim"

    new_window "tmux"
    goto_project_and_load_status "tmux"

    new_window "tmuxifier"
    goto_project_and_load_status "~/.tmuxifier/layouts"

    new_window "zsh"
    goto_project_and_load_status "zsh"

    new_window "karabiner"
    goto_project_and_load_status "karabiner"

    select_window 0

fi

finalize_and_go_to_session
