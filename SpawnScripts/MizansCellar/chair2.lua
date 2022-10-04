--[[
    Script Name    : SpawnScripts/MizansCellar/chair2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:30
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if QuestStepIsComplete(Spawn,5749,2)== true or QuestIsComplete(Spawn,5749)==true then
SpawnSet(NPC,"model_type","4")
end
end

function respawn(NPC)
	spawn(NPC)
end