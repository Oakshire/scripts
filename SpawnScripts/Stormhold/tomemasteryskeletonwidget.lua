--[[
    Script Name    : SpawnScripts/Stormhold/tomemasteryskeletonwidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.17 03:04:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, 5396) or HasCompletedQuest(Spawn, 5396) or HasItem(Spawn, 21316) then
      SetAccessToEntityCommand(Spawn,NPC,"", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, 5396) and not HasCompletedQuest(Spawn,  5396) and not HasItem(Spawn, 21316) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Pick up book", 1)
    end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Pick up book' then
      AddLootItem(NPC,21316)
    SetAccessToEntityCommand(Spawn,NPC,"examine coffin", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)      
    end
end

function respawn(NPC)
	spawn(NPC)
end