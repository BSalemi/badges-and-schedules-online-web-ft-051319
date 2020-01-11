# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  messages = []
  attendees.each do |name|
    messages.push(badge_maker(name))
  end
  return messages
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |name, index|
    room_assignments.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
  end
  return room_assignments
end

def printer(attendees)
  attendees.each do |attendee|
    batch_badge_creator(attendee)
  end 
  attendees.each do |attendee|
    assign_rooms(attendee)
  end 
end 
