--[[
    Script Name    : SpawnScripts/Antonica/huntersmanifest.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.05 09:04:26
    Script Purpose : 
                   : 
--]]

local HuntersManifest = 5799

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, HuntersManifest) and not HasCompletedQuest(Spawn, HuntersManifest) then
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
     if not HasQuest(Spawn, HuntersManifest) and not HasCompletedQuest(Spawn,  HuntersManifest) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"open manifest", 1)
end
   end


function con1(NPC, Spawn)
      if CanReceiveQuest(Spawn, HuntersManifest) then
      OfferQuest(NPC, Spawn, HuntersManifest)
      end
      local con = CreateConversation()
       AddConversationOption(con, "I will hunt game in Antonica.")
        AddConversationOption(con, "exit")
        StartDialogConversation(con, 1, NPC, Spawn, "The manifest once belonged to a hunter, that apparently had something to do with organizing hunts for Qeynosian royalty.  Great hunts were organized, where hunters from all over Norrath were invited to participate, competing for prizes and prestige.  The manifest is not particularly well written, but it sparks your imagination nonetheless.")
end



function respawn(NPC)
	spawn(NPC)
end