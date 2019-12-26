# Summary: Instructs Less to output man pages with color.

set -g -x LESS_TERMCAP_mb (printf '\e[1;31m')     # Begin bold.
set -g -x LESS_TERMCAP_md (printf '\e[1;36m')     # Begin blink.
set -g -x LESS_TERMCAP_me (printf '\e[0m')        # Reset bold/blink.
set -g -x LESS_TERMCAP_so (printf '\e[1;44;33m')  # Begin reverse video.
set -g -x LESS_TERMCAP_se (printf '\e[0m')        # Reset reverse video.
set -g -x LESS_TERMCAP_us (printf '\e[1;32m')     # Begin underline.
set -g -x LESS_TERMCAP_ue (printf '\e[0m')        # Reset underline.
set -g -x GROFF_NO_SGR 1                          # For Konsole/Gnome-Terminal.
