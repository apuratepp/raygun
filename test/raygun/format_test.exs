defmodule Raygun.FormatTest do
  use ExUnit.Case

  import Raygun.Format

  test "message_payload when user is provided" do
    msg = "hola"
    opts = [user: "josep"]

    message_payload(msg, opts).details.error.message == msg
  end

  test "message_payload when no user is provided" do
    msg = "hola"
    opts = []
    message_payload(msg, opts).details.error.message == msg
  end
end
