# ------------------------------------------------------------
# Xeals Zsh Login
# Auto-start Sway on TTY1
# ------------------------------------------------------------

# Only start Sway when:
# - this is a login shell
# - no graphical session is already running
# - we are on TTY1

if [[ -z "$DISPLAY" && -z "$WAYLAND_DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
    echo
    echo "Starting Sway..."
    echo

    exec sway
fi