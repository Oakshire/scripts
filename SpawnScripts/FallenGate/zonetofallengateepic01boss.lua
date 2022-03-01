--[[
    Script Name    : SpawnScripts/FallenGate/zonetofallengateepic01boss.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.19 09:07:37
    Script Purpose : 
                   : 
--]]

local SearchingtheDepthsofFallenGate = 5307

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Command)
if HasCompletedQuest(Spawn, SearchingtheDepthsofFallenGate) then
return true
elseif not HasCompletedQuest(Spawn, SearchingtheDepthsofFallenGate) then
return false
end
end


function respawn(NPC)
	spawn(NPC)
end