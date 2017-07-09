Script.Load("lua/Observatory.lua")

ReplaceLocals(GetLocal(Observatory.PerformDistressBeacon, "GetPlayersToBeacon"), {
    GetIsPlayerNearby = function(self, player, toOrigin)
        local isBeaconable = true
        if player.GetIsBeaconable then
            isBeaconable = player:GetIsBeaconable(self, toOrigin)
        end
		Print("Ent %s %s beaconable!", tostring(player), (isBeaconable and "is" or "isn't"))

        return isBeaconable and (player:GetOrigin() - toOrigin):GetLength() < Observatory.kDistressBeaconRange
    end
})
