# Summary: Forces 'chgrp' to preserve root.

function chgrp -d "Force chgrp to preseve root permissions." --wrap "chgrp"
    /usr/bin/chgrp --preserve-root $argv
end
