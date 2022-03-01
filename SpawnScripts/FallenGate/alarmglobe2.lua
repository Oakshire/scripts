--[[
    Script Name    : SpawnScripts/FallenGate/alarmglobe2.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.10 11:07:52
    Script Purpose : 
                   : 
--]]

local ChargeOfTheLeatherfootBrigade_Frambert = 5310

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_Frambert) == 2 then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Smash Globe", 1)
elseif QuestStepIsComplete(Spawn, ChargeOfTheLeatherfootBrigade_Frambert, 2) then
        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Smash Globe", 0)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Smash Globe' then
		    SendMessage(Spawn, "You try to smash the globe, but magic keeps it from breaking.")
            SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_Frambert, 2)
   SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"Smash Globe", 0)

end
   end