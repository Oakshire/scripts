--[[
    Script Name    : SpawnScripts/FallenGate/MrBurpbellySkeleton.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.07 09:07:46
    Script Purpose : 
                   : 
--]]

local LostFriendInFallenGate = 5305

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, LostFriendInFallenGate) or HasCompletedQuest(Spawn,  LostFriendInFallenGate) then
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"Examine skeleton", 0)
      elseif HasQuest(Spawn, LostFriendInFallenGate) then
        SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Examine skeleton", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine skeleton' then
		           if GetQuestStep(Spawn, LostFriendInFallenGate) == 1 then
                   SetStepComplete(Spawn, LostFriendInFallenGate, 1)
                    SendMessage(Spawn, "You take the necklace off the stewing skeleton.")
         elseif GetQuestStep(Spawn, LostFriendInFallenGate) == 2 then
            SendMessage(Spawn, "You've already taken the necklace.", 20)
end
end
  end


function respawn(NPC)
	spawn(NPC)
end