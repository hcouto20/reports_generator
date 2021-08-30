defmodule ReportsGenerator do

  def build(filename) do
    "reports/#{filename}"
    |> File.read()
    |> handle_file("banana")
  end

  defp handle_file({:ok, file_content}, msg), do: file_content <> msg
  defp handle_file({:error, _reason}, msg), do: "Error while opening file " <> msg

end
