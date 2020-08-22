--[[
    Script Name    : SpawnScripts/Freeport/afalseroekillik.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.21 06:08:35
    Script Purpose : 
                   : 
--]]

QUEST = 575

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange", "LeaveRange")
        AddSpawnAccess(NPC, NPC)
end


function group_dead(NPC, Spawn)
AddStepProgress(Spawn, QUEST, 7, 1)  
end

function InRange(NPC, Spawn)
local PlayersLevel = GetLevel(Spawn)
SpawnSet(NPC, "level", PlayersLevel)
	if HasQuest(Spawn, QUEST) and GetQuestStep(Spawn, QUEST) == 7 then
		AddSpawnAccess(NPC, Spawn)
        else
                RemoveSpawnAccess(NPC, Spawn)
end
   end


function LeaveRange(NPC, Spawn)

end



function respawn(NPC)
           spawn(NPC)
end

