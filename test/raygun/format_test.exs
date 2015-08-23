defmodule Raygun.FormatTest do
  use ExUnit.Case, async: true

  import Raygun.Format

  test "message_payload when user is provided" do
    msg = "hola"
    assert message_payload(msg, [user: "josep"]).details.error.message == msg
  end

  test "message_payload when no user is provided" do
    msg = "hola"
    assert message_payload(msg, []).details.error.message == msg
  end
end
