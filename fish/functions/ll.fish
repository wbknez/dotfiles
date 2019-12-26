# Summary: Formats 'ls' output as a long-form directory listing.

function ll -d "Long-form ls listing." --wraps "ls"
    ls -la $argv
end
