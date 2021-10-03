--[[
    Script Name    : SpawnScripts/DownBelow/JesterCoffinWidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.02 10:10:15
    Script Purpose : 
                   : 
--]]

local DefiledDremDrem = 5367

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'examine coffin' then
      local con = CreateConversation()
       AddConversationOption(con, "Open Coffin.", "offer")
        AddConversationOption(con, "Leave the coffin alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "A brass plate reads:  \"Hear lies Drem Drem the Jester, may his rest be as peaceful, as his life was filled with laughter.\"")
end
end

function offer(NPC, Spawn)
       OfferQuest(NPC, Spawn, DefiledDremDrem)
       local con = CreateConversation()
     AddConversationOption(con, "I should find the bones.")
      AddConversationOption(con, "exit")
 StartDialogConversation(con, 1, NPC, Spawn, "Upon opening the coffin, you notice that it is empty.  This coffin has been defiled!")
        SetAccessToEntityCommand(Spawn,NPC,"examine coffin", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
end

function InRange(NPC, Spawn)
 if HasQuest(Spawn, DefiledDremDrem) or HasCompletedQuest(Spawn, DefiledDremDrem) then
      SetAccessToEntityCommand(Spawn,NPC,"examine coffin", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, DefiledDremDrem) and not HasCompletedQuest(Spawn,  DefiledDremDrem) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine pump", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end