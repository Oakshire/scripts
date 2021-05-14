--[[
    Script Name    : SpawnScripts/Commonlands/SEUndeathSentry.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:54
    Script Purpose : 
                   : 
--]]



local BrokenEquipment = 415

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")    
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    AddPrimaryEntityCommand(Spawn, NPC, "repair", 10, "")
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'repair' and HasItem(Spawn, 15095) then
            if HasQuest(Spawn, BrokenEquipment) and not QuestStepIsComplete(Spawn, BrokenEquipment, 7) then
                SetStepComplete(Spawn, BrokenEquipment, 7)
                RemoveItem(Spawn, 15095)
   end
 end
end
