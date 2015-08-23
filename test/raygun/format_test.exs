defmodule Raygun.FormatTest do
  use ExUnit.Case

  import Raygun.Format

  test "message_payload" do
    msg = "hola"
    opts = [user: "josep"]

    message_payload(msg, opts).details.error.message == msg
  end
end
