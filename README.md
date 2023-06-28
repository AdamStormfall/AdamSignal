# AdamSignal

* API:

* AdamSignal.new()
》 Creates new signal.

* AdamSignal:Fire(...)
》 Fires signal so you can use AdamSignal:Connect() or AdamStormfall:Once()

* AdamSignal:Connect(...)
》 Used to connect when AdamSignal:Fire(...) used.

* AdamSignal:Once(...)
》 Used to connect when AdamSignal:Fire(...) used. But only can be used once.

* AdamSignal:Wait()
》 Can be used after AdamSignal:Connect(...) or AdamSignal:Once(...) to add cooldown.
