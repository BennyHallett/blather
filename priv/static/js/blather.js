var $messages = $("#messages");
var $input = $("#message-input");
var $username = $("#username");

$(function() {
  var socket = new Phoenix.Socket("ws://" + location.host + "/ws");

  socket.join("rooms", "lobby", {}, function(channel) {

    channel.on("user:entered", function(message) {
      $messages.append("<br />[" + message.username + "] entered");
    });

    channel.on("new:message", function(message) {
      $messages.append("<br />[" + message.username + "] " + message.content);
    });

    $input.off("keypress").on("keypress", function(e) {
      if (e.keyCode == 13) {
        channel.send("new:message", { content: $input.val(), username: $username.val() });
        $input.val("");
      }
    });
  });
});
