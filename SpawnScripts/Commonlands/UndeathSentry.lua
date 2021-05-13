--[[
    Script Name    : SpawnScripts/Commonlands/UndeathSentry.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:54
    Script Purpose : 
                   : 
--]]

local BrokenEquipment = 415

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "SpawnAccess", "SpawnAccess")
end


function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Repair' and HasItem(Spawn, 15095) then
		    if GetQuestStep(Spawn, BrokenEquipment) == 2 and GetName(NPC) == 'NW Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 2)
		    elseif GetQuestStep(Spawn, BrokenEquipment) == 3 and GetName(NPC) == 'W Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 3)
		    elseif GetQuestStep(Spawn, BrokenEquipment) == 4  and GetName(NPC) == 'SW Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 4)
		     elseif GetQuestStep(Spawn, BrokenEquipment) == 5 and GetName(NPC) == 'NE Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 5)
		     elseif GetQuestStep(Spawn, BrokenEquipment) == 6 and GetName(NPC) == 'E Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 6)
		     elseif GetQuestStep(Spawn, BrokenEquipment) ==7 and GetName(NPC) == 'SE Undeath Sentry' then
		     SetStepComplete(Spawn, BrokenEquipment, 7)
   end
end
 end


function SpawnAccess(NPC, Spawn)
      AddPrimaryEntityCommand(Spawn, NPC, "Repair")
	if not HasItem(Spawn, 15095) then
       SetAccessToEntityCommand(Spawn,NPC,"Repair",0)
	end
end