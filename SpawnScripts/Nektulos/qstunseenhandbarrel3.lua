--[[
    Script Name    : SpawnScripts/Nektulos/qstunseenhandbarrel3.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.19 07:06:48
    Script Purpose : 
                   : 
--]]

local ProveYourself = 5256

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")  
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, ProveYourself) == 2 then
    AddPrimaryEntityCommand(Spawn, NPC, "Leave the supplies", 3, "Leave the supplies", "", 100)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Leave the supplies' then
            if not QuestStepIsComplete(Spawn, ProveYourself, 2) then
                SetStepComplete(Spawn, ProveYourself, 2)
                 zone = GetZone(Spawn)
                SpawnByLocationID(zone, 100435)
                SetAccessToEntityCommand(Spawn,NPC,"Leave the supplies", 0)
                SpawnSet(NPC, "show_command_icon", 0)
               SpawnSet(NPC, "display_hand_icon", 0)
   end
 end
end



function respawn(NPC)
	spawn(NPC)
end