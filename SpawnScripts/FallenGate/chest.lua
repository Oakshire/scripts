--[[
    Script Name    : SpawnScripts/FallenGate/chest.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.10 04:07:04
    Script Purpose : 
                   : 
--]]

local ChargeOfTheLeatherfootBrigade_TheSarge = 5311





function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) or HasCompletedQuest(Spawn,  ChargeOfTheLeatherfootBrigade_TheSarge) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 0)
      elseif HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) then
        SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Open Chest' then
		           if GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) == 2 then
                   SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge, 2)
                    SendMessage(Spawn, "You find a ghostly ring inside the chest.")
                        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Open Chest", 0)
end
end
  end

function respawn(NPC)
	spawn(NPC)
end