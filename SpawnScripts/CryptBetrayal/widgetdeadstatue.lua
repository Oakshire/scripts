--[[
    Script Name    : SpawnScripts/CryptBetrayal/widgetdeadstatue.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 08:11:07
    Script Purpose : 
                   : 
--]]

local StrengthOfTheIreMinions = 5390

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, StrengthOfTheIreMinions) and not HasCompletedQuest(Spawn,  StrengthOfTheIreMinions) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
    end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine statue' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Touch statue.", "offer")
               AddConversationOption(conversation, "Leave it alone.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "This statue radiates an ominous force. You feel compelled to touch it.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine statue", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end



function check(NPC, Spawn)
     if not HasQuest(Spawn, StrengthOfTheIreMinions) and not HasCompletedQuest(Spawn,  StrengthOfTheIreMinions) then
              SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine statue", 1)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, StrengthOfTheIreMinions)
         conversation = CreateConversation()
          AddConversationOption(conversation, "Fight the ire minions.")
           AddConversationOption(conversation, "exit")
                StartDialogConversation(conversation, 1, NPC, Spawn, "As you touch the statue your mind is filled with a voice that says, \"Destroy the ire minions and use their hate to strengthen your knowledge of battle.\"")

end

function respawn(NPC)
	spawn(NPC)
end