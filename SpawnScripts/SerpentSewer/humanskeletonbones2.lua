--[[
    Script Name    : SpawnScripts/SerpentSewer/humanskeletonbones2.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 08:07:45
    Script Purpose : 
                   : 
--]]

local CrazyTalkingSkull = 5270

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end


function InRange(NPC, Spawn)
 if GetQuestStep(Spawn, CrazyTalkingSkull) == 1 then
     AddPrimaryEntityCommand(Spawn, NPC, "Gather remains", 5, "Gather remains", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Gather remains' then
		 SetStepComplete(Spawn, CrazyTalkingSkull, 1)
	SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Gather remains", 0)
end
    end


function respawn(NPC)
	spawn(NPC)
end