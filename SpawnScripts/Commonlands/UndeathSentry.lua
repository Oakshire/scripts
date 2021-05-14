--[[
    Script Name    : SpawnScripts/Commonlands/UndeathSentry.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:54
    Script Purpose : 
                   : 
--]]

--  Northwestern Arcanic Sentry ID = 330944
--  Western arcanic sentry ID = 330941
--  Southwestern arcanic sentry ID = 330939
--  Northeastern arcanic sentry ID = 330943
--  Eastern arcanic sentry ID = 330942 
--  Southeastern arcanic sentry ID = 330940

local BrokenEquipment = 415

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")    
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    AddPrimaryEntityCommand(Spawn, NPC, "repair", 10, "")
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'repair' and HasItem(Spawn, 15095) then
         if GetQuestStep(Spawn, BrokenEquipment) == 2 and GetName(NPC) == "NW Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 2)
          elseif GetQuestStep(Spawn, BrokenEquipment) == 3 and GetName(NPC) == "W Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 3)
              elseif GetQuestStep(Spawn, BrokenEquipment) == 4 and GetName(NPC) == "SW Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 4)   
               elseif GetQuestStep(Spawn, BrokenEquipment) == 5 and GetName(NPC) == "NE Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 5)
                 elseif GetQuestStep(Spawn, BrokenEquipment) == 6 and GetName(NPC) == "E Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 6)
                 elseif GetQuestStep(Spawn, BrokenEquipment) == 7 and GetName(NPC) == "SE Undeath Sentry" then
             SetStepComplete(Spawn, BrokenEquipment, 7)
   end
end
 end


