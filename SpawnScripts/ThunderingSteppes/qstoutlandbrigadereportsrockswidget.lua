--[[
    Script Name    : SpawnScripts/ThunderingSteppes/qstoutlandbrigadereportsrockswidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 10:06:48
    Script Purpose : 
                   : 
--]]

local OutlandBrigadeReports = 473


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")  
end



function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, OutlandBrigadeReports) == 3 then
    AddPrimaryEntityCommand(Spawn, NPC, "Look around the rocks.", 3, "Look around the rocks.", "", 100)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Look around the rocks.' then
            if not QuestStepIsComplete(Spawn, OutlandBrigadeReports, 3) then
                zone = GetZone(Spawn)
                SpawnByLocationID(zone, 133772380)
                SetAccessToEntityCommand(Spawn,NPC,"Look around the rocks.", 0)
                SpawnSet(NPC, "show_command_icon", 0)
               SpawnSet(NPC, "display_hand_icon", 0)
   end
 end
end
