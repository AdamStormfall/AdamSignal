# AdamSignal

> Code is in **init.lua** file.

* API:

* AdamSignal.new() : RBXScriptSignal
》 Creates new signal.

* AdamSignal:Fire(...) : void
》 Fires signal so you can use AdamSignal:Connect() or AdamStormfall:Once()

* AdamSignal:Connect(...) : RBXScriptConnection
》 Used to connect when AdamSignal:Fire(...) used.

* AdamSignal:Once(...) : RBXScriptConnection
》 Used to connect when AdamSignal:Fire(...) used. But only can be used once.

* AdamSignal:Wait() : Variant
》 Can be used after AdamSignal:Connect(...) or AdamSignal:Once(...) to add cooldown.

* AdamSignal:Disconnect() : void
》 Used to disconnect signals.

* AdamSignal.Key : string
》 You can use this to get key of signal you made.

* AdamSignal.FireLimit : number
》 You can use this to set limit for stuff.

* AdamSignal.Table : table
》 You can insert anything to this table.
