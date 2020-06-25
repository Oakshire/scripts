--[[
    Script Name    : SpawnScripts/CircleElders/ATunarianElder.lua
    Script Author  : premierio015
    Script Date    : 2020.05.24 04:05:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
         EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function EmoteLoop (NPC)   -- Animations
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

