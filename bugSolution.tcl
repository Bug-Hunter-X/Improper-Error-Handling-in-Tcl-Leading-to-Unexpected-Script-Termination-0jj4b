proc error_proc {msg} {
    puts stderr "ERROR: $msg"
    # Perform cleanup actions if needed (e.g., close files)
    # Log the error to a file
    # ...other error handling ...
    exit 1
}

proc myproc {arg} {
    if {$arg == ""} {
        error_proc "Argument cannot be empty"
    } else {
        puts "Argument: $arg"
    }
}

myproc ""
myproc "hello"