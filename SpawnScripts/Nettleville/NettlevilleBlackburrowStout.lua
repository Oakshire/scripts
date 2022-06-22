--[[
    Script Name    : SpawnScripts/Nettleville/NettlevilleBlackburrowStout.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 10:06:42
    Script Purpose : 
                   : 
--]]

local Stout = 5594

function spawn(NPC)
SetPlayerProximityFunction(NPC, 16, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Inspect' then
      local con = CreateConversation()
       AddConversationOption(con, "Take the cask and try to find the owner.", "offer")
        AddConversationOption(con, "Leave the cask alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "This worn cask appears to have been forgetten.  As you wipe away some grime Gnollish symbols and the word 'Starcrest' becomes visable.")
end
end

function offer(NPC, Spawn)
       OfferQuest(NPC, Spawn, Stout)
       local con = CreateConversation()
     AddConversationOption(con, "Perhaps a tavern would be interested in this brew.")
     StartDialogConversation(con, 1, NPC, Spawn, "You go to pick up the cask and wrack your brain on who might want this.")
    SetAccessToEntityCommand(Spawn,NPC,"Inspect coffin", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, Stout) or HasCompletedQuest(Spawn, Stout) then
      SetAccessToEntityCommand(Spawn,NPC,"Inspect", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
--    SpawnSet(NPC, "model_type", 0)
end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, Stout) and not HasCompletedQuest(Spawn,  Stout) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Inspect", 1)
--    SpawnSet(NPC, "model_type", 2942)
    else
      SetAccessToEntityCommand(Spawn,NPC,"Inspect", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
--    SpawnSet(NPC, "model_type", 0)
    end
end

function respawn(NPC)
	spawn(NPC)
end