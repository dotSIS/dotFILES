# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/AWS"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "AWS"; then
    new_window "AWS"
    split_h 35
    select_pane 1
    # run_cmd ''
    split_h 50
    select_pane 2
    # run_cmd ''
    select_pane 3
    # run_cmd ''
    select_pane 1
    split_v 50
    select_pane 2
    # run_cmd ''
    select_pane 3
    split_v 50
    select_pane 4
    # run_cmd ''
    select_pane 5
    split_v 50
    select_pane 6
    # run_cmd ''
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
