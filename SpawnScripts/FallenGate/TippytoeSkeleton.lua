--[[
    Script Name    : SpawnScripts/FallenGate/TippytoeSkeleton.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.10 03:07:43
    Script Purpose : 
                   : 
--]]

local ChargeOfTheLeatherfootBrigade_TheSarge = 5311

function spawn(NPC)

end

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) or HasCompletedQuest(Spawn,  ChargeOfTheLeatherfootBrigade_TheSarge) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Inspect Skeleton", 0)
      elseif HasQuest(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) then
        SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Inspect Skeleton", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Inspect Skeleton' then
		           if GetQuestStep(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge) == 1 then
                   SetStepComplete(Spawn, ChargeOfTheLeatherfootBrigade_TheSarge, 1)
                    SendMessage(Spawn, "You find a small metal tag hanging from the neck of the skeleton that has the word Tippytoe on it.")
                        SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Inspect Skeleton", 0)
end
end
  end

function respawn(NPC)
	spawn(NPC)
end