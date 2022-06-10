local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

-- Load the Signal module and create PointsChanged signal:
local Signal = require(Knit.Util.Signal)

local WaveManagerService = Knit.CreateService { Name = "WaveManager", Client = {} }

WaveManagerService.PointsChanged = Signal.new()

WaveManagerService.Timer = 0 -- init

function WaveManagerService:IncreaseTimer(player, amount)
    self.Timer += amount
    if (self.Timer % 10 == 0) then
        self.PointsChanged:Fire(player, self.Timer)
    end
end

function WaveManagerService:GetTimer()
    return self.Timer
end




return WaveManagerService