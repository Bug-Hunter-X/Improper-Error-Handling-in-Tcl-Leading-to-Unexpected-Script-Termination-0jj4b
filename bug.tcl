proc error_proc {msg} {
    puts stderr "$msg"
    exit 1
}

proc myproc {arg} {
    if {$arg == ""} {
        error_proc "Argument cannot be empty"
    }
    puts "Argument: $arg"
}

myproc ""