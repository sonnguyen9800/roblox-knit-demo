-- From a LocalScript
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

local WaveManagerService = Knit.GetService("WaveManager")


WaveManagerService:GetTimer():andThen(function(points)
    print("Points for myself:", points)
end)