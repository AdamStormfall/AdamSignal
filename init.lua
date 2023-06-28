local AdamSignal = {}

local HttpService = game:GetService("HttpService")

AdamSignal.ClassName = "AdamSignal"

function AdamSignal.new()
  local Event = Instance.new("BindableEvent")
  local Key = HttpService:GenerateGUID(false)

  Event.Name = Key
  
  return setmetatable({
      Event = Event,
      Key = Key,
      Table = {},
  }, AdamSignal)
end

function AdamSignal:__newindex(Index, Value)
  if 
end

return AdamSignal
