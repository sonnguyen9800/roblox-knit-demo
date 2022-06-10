local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)


local EnemyManagerService = Knit.CreateService { Name = "EnemyManager", Client = {} }

EnemyManagerService.Timer = 0 -- init

function EnemyManagerService:KnitStart()
    local PointsService = Knit.GetService("WaveManager")
    PointsService.PointsChanged:Connect(function(player, timer)
        print("Timer changed: ", timer)
    end)
end

return EnemyManagerService