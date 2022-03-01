--[[
    Script Name    : SpawnScripts/CryptBetrayal/widgetdecayedskeleton.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 09:11:26
    Script Purpose : 
                   : 
--]]

local StolenBones = 5392

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, StolenBones) and not HasCompletedQuest(Spawn,  StolenBones) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
    end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine skeleton' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Examine skeleton. ", "offer")
               AddConversationOption(conversation, "Leave it alone.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a skeleton rotting in its crypt.")
                   SetAccessToEntityCommand(Spawn,NPC,"Examine skeleton", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end



function check(NPC, Spawn)
     if not HasQuest(Spawn, StolenBones) and not HasCompletedQuest(Spawn,  StolenBones) then
              SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"Examine skeleton", 1)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, StolenBones)
         conversation = CreateConversation()
          AddConversationOption(conversation, "I will slay them.")
              AddConversationOption(conversation, "exit")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Upon closer examination you find that the skeleton is missing a few bones.  In fact, all of the skeletons in the area are missing bones.  Perhaps they are being used to create the vile agonized essences here in the Crypt of Betrayal.  In order to let the souls rest of those defiled, the agonized essences must be put to rest!")

end

function respawn(NPC)
	spawn(NPC)
end