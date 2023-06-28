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
      FireLimit = math.huge,
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
  if AdamSignal[Index] then
    AdamSignal[Index] = Value
  else
    self.Table[Index] = Value
  end
end

function AdamSignal:Connect(F)
  if not self.Event.Name == self.Key then
    return warn("AdamSignal: Suspecious activity detected while trying to use self:Connect() function.")
  end
  
  return self.Event.Event:Connect(F)
end

function AdamSignal:Fire(...)
  if not self.Event.Name == self.Key then
    return warn("AdamSignal: Suspecious activity detected while trying to use self:Fire() function.")
  end

  local FunctionTable = {...}

  if #FunctionTable > self.FireLimit then
    warn("AdamSignal: Cannot fire more than the limit. Limit is: "..tostring(self.FireLimit)..".")
  end
  
  return self.Event.Event:Fire(...)
end

function AdamSignal:Once(F)
  if not self.Event.Name == self.Key then
    return warn("AdamSignal: Suspecious activity detected while trying to use self:Once() function.")
  end

  return self.Event.Event:Once(F)
end

function AdamSignal:Wait()
  if not self.Event.Name == self.Key then
    return warn("AdamSignal: Suspecious activity detected while trying to use self:Wait() function.")
  end
  
  return self.Event.Event:Wait()
end

return AdamSignal
