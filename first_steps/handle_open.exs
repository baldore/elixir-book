handle_open = fn
  {:ok, file}  -> "First line: #{IO.read(file, :line)}"
  {_,   error} -> "Error: #{:file.format_error(error)}"
end

show_open_file_message = fn str ->
  str
    |> File.open()
    |> handle_open.()
    |> IO.puts()
end

show_open_file_message.(".editorconfig")
show_open_file_message.("XXX")