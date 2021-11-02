--[[
    Script Name    : SpawnScripts/CryptBetrayal/widgetcandleholder.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 07:11:08
    Script Purpose : 
                   : 
--]]

local CellanasLocket = 5389

function spawn(NPC)
SetPlayerProximityFunction(NPC, 3, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, CellanasLocket) and not HasCompletedQuest(Spawn,  CellanasLocket) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
    end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine candle holder' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Read the inscription.", "offer")
               AddConversationOption(conversation, "Ignore it.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a worthless necklace made of woven thread wrapped around the base of the candle holder.  Attached to the necklace you find a crude tin locket that bears an inscription.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine candle holder", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end



function check(NPC, Spawn)
     if not HasQuest(Spawn, CellanasLocket) and not HasCompletedQuest(Spawn,  CellanasLocket) then
              SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine candle holder", 1)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, CellanasLocket)
         conversation = CreateConversation()
          AddConversationOption(conversation, "I will avenge her.")
           AddConversationOption(conversation, "exit")
                StartDialogConversation(conversation, 1, NPC, Spawn, "The locket reads: \"In memory of Cellana, who met her death at the hand of a haunted essence.  Only a great adventurer would find this, please avenge her in your travels.\"")
end

function respawn(NPC)
	spawn(NPC)
end