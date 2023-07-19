# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Prodbs"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "Prodbs"; then
    new_window "Prodbs"
    split_v 5
    run_cmd "cd frontend"
    split_h 50
    run_cmd "cd backbone/prodbs"
    select_pane 1
    run_cmd "nv ."
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
