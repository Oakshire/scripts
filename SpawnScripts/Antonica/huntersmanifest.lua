--[[
    Script Name    : SpawnScripts/Antonica/huntersmanifest.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.05 09:04:26
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"

local HuntersManifest1 = 5799
local HuntersManifest2 = 5801
local HuntersManifest3 = 5802

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
if GetPlayerHistory(Spawn, 8) == 0 or GetPlayerHistory(Spawn, 8) == nil  then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"open manifest", 1)
else
       SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    SetAccessToEntityCommand(Spawn,NPC,"open manifest", 0)
end
   end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'open manifest' then
      local con = CreateConversation()
       AddConversationOption(con, "Open manifest.", "con1")
        AddConversationOption(con, "Leave the manifest alone.")
        StartDialogConversation(con, 1, NPC, Spawn, "Within the storage box you find a leather bound manifest.  It appears to be untouched for quite some time, but the leather is still in excellent condition.")
                                SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
      SetAccessToEntityCommand(Spawn,NPC,"open manifest", 0)
       AddTimer(NPC, 10000, "check", 1, Spawn)
end
end

function check(NPC, Spawn)
     if GetPlayerHistory(Spawn, 8) == 0 or GetPlayerHistory(Spawn, 8) == nil  then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"open manifest", 1)
end
   end


function con1(NPC, Spawn)
      if GetPlayerHistory(Spawn, 8) == 0 or GetPlayerHistory(Spawn, 8) == nil  then
      local generate_random_quest_option = MakeRandomInt(1, 3)
      if generate_random_quest_option == 1 then
      OfferQuest(NPC, Spawn, HuntersManifest1)
      elseif generate_random_quest_option == 2 then
       OfferQuest(NPC, Spawn, HuntersManifest2)
      elseif generate_random_quest_option == 3 then
        OfferQuest(NPC, Spawn, HuntersManifest3)
       end
          end
      local con = CreateConversation()
       AddConversationOption(con, "I will hunt game in Antonica.")
        AddConversationOption(con, "exit")
        StartDialogConversation(con, 1, NPC, Spawn, "The manifest once belonged to a hunter, that apparently had something to do with organizing hunts for Qeynosian royalty.  Great hunts were organized, where hunters from all over Norrath were invited to participate, competing for prizes and prestige.  The manifest is not particularly well written, but it sparks your imagination nonetheless.")
end



function respawn(NPC)
	spawn(NPC)
end