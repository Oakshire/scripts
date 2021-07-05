--[[
    Script Name    : SpawnScripts/Edgewater/acontaminatedrat.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 09:07:37
    Script Purpose : 
                   : 
--]]

local ExterminatingTheContaminatedRats = 5287

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
if not HasQuest(Spawn, ExterminatingTheContaminatedRats) and not HasCompletedQuest(Spawn,  ExterminatingTheContaminatedRats) then
AddLootItem(Spawn, 3583)
end
   end 

function respawn(NPC)
	spawn(NPC)
end