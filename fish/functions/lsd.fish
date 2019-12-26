# Summary: Mimic 'tree' using 'ls'.

function lsd -d "Format ls as a tree."
    find ./ -type d -print | \
        sed -e "s;[^/]*/; /;g;s;/ ;    ;g;s;^ /\$;.;;s; /;|-- ;g"
end
