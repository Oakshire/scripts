--[[
    Script Name    : SpawnScripts/MizansCellar/table2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 04:09:41
    Script Purpose : Workaround until we figure out furniture placement
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
end

function InRange(NPC,Spawn)
if QuestStepIsComplete(Spawn,5749,1)== true or QuestIsComplete(Spawn,5749)== true then
SpawnSet(NPC,"model_type","6")
end
end

function respawn(NPC)
	spawn(NPC)
end