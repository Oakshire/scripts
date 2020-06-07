--[[
    Script Name    : SpawnScripts/CircleElders/ATunarianElder1.lua
    Script Author  : premierio015
    Script Date    : 2020.05.25 03:05:10
    Script Purpose : When a Tunarian Elder dies, starts the Circle Event.
--]]
local KaylID = 433249

function spawn(NPC)
 EmoteLoop (NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end



function death(NPC, Spawn) 
local zone = GetZone(NPC)
local Kayl = GetSpawnByLocationID(zone, KaylID)
AddTimer(Kayl, 10000, "MobAttack", 1, Spawn) -- after A Tunarian Elder dies, after 10 sec call function for Old Bruiser to attack the Player
end


function EmoteLoop (NPC)  -- Animations
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
        if choice == 1 then
                PlayAnimation(NPC, 10961)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 10963)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end
