def terminal_width
  begin
    `tput cols`.to_i
  rescue
    80
  end
end

def left_and_right(left, right)
  left = left.to_s
  right = right.to_s
  spaces_needed = terminal_width - left.length - right.length
  spaces_needed = 1 if spaces_needed < 1

  left + (" " * spaces_needed) + right
end
def center(message)
  message = message.to_s
  spaces_needed = {}
  spaces_needed[:left] = (terminal_width / 2) - (message.length / 2)
  spaces_needed[:right] =
    terminal_width - (spaces_needed[:left] + message.length)

  unless spaces_needed[:left] < 0 or spaces_needed[:right] < 0
    (" " * spaces_needed[:left]) + message + (" " * spaces_needed[:right])
  else
    message
  end
end