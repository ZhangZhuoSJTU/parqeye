# parqeye demo tape — render with:  vhs .github/assets/demo.tape
# Install VHS:  brew install vhs   (needs ttyd + ffmpeg)

Output .github/assets/demo.gif

Set Theme "Tomorrow Night"
Set FontSize 16
Set Width 1400
Set Height 850
Set Padding 20
Set PlaybackSpeed 1.0

# --- launch on a test file, hidden while it loads ---
Hide
Type "uvx parqeye test-data/wide_800_cols.parquet"
Enter
Sleep 10s
Show
Sleep 2s

# --- Visualize tab: scroll rows, page down, scroll columns ---
Down 8
Sleep 500ms
Type "d"
Sleep 800ms
Type "d"
Sleep 800ms
Right 12
Sleep 800ms
Type "u"
Sleep 800ms

# --- Schema tab ---
Tab
Sleep 1.5s
Down 10
Sleep 800ms
Right 4
Sleep 1s

# --- Metadata tab ---
Tab
Sleep 1.5s
Down 6
Sleep 1s

# --- Row Groups tab ---
Tab
Sleep 1.5s
Down 4
Sleep 800ms
Right 6
Sleep 1s

# --- back to Visualize ---
Tab
Sleep 1.5s

# --- quit ---
Type "q"
