# – Convert a float to a string with two decimal digits. (Erlang)
:io.format("~.2f", [2.5])

# – Get the value of an operating-system environment variable. (Elixir)
System.get_env("NVM_BIN")

# – Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
Path.extname("foo.txt")

# – Return the process’s current working directory. (Elixir)
System.cwd()

# – Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
# R/ Poison is an option

# – Execute a command in your operating system’s shell.
System.cmd("whoami", [])
