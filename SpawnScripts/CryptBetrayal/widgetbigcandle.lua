--[[
    Script Name    : SpawnScripts/CryptBetrayal/widgetbigcandle.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 08:11:57
    Script Purpose : 
                   : 
--]]

local GiftOfTheRestlessCorpsess = 5391

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, GiftOfTheRestlessCorpsess) and not HasCompletedQuest(Spawn,  GiftOfTheRestlessCorpsess) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
    end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine candle' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Examine coin.", "offer")
               AddConversationOption(conversation, "Leave it.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You see a coin embedded within the wax of the candle.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine candle", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end



function check(NPC, Spawn)
     if not HasQuest(Spawn, GiftOfTheRestlessCorpsess) and not HasCompletedQuest(Spawn,  GiftOfTheRestlessCorpsess) then
              SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine candle", 1)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, GiftOfTheRestlessCorpsess)
         conversation = CreateConversation()
          AddConversationOption(conversation, "I will hunt them.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "The coin has an engraving that reads:  \"The one who slays the restless corpses of this place will be rewarded for their efforts.\"  As you read the passage, the hair on your neck stands on end and you feel heat rising from  your body.  Perhaps hunting these things will be beneficial to you.")

end

function respawn(NPC)
	spawn(NPC)
end