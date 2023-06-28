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

function AdamSignal:__index(Index)
  if AdamSignal[Index] then
    return AdamSignal[Index]
  else
    return self.Table[Index]
  end
end

function AdamSignal:__newindex(Index, Value)
  return self.Table[Index] = Value
end

function AdamSignal:Connect(F)
  return self.Event.Event:Connect(F)
end

function AdamSignal:Fire(...)
  return self.Event.Event:Fire(...)
end

function AdamSignal:Once(F)
  local Connection = nil

  Connection = self.Event.Event:Connect(function(...)
      if Connection then
        Connection:Disconnect()
      end
      F(...)
  end
  
  return Connection
end

function AdamSignal:Wait()
  return self.Event.Event:Wait()
end

return AdamSignal
