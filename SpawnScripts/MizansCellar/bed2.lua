--[[
    Script Name    : SpawnScripts/MizansCellar/bed2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if QuestStepIsComplete(Spawn,5749,5)== true  then
SpawnSet(NPC,"model_type","3")
end
end

function respawn(NPC)
	spawn(NPC)
end