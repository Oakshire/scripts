--[[
    Script Name    : SpawnScripts/CryptBetrayal/widgetbrokentable.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.02 05:11:23
    Script Purpose : 
                   : 
--]]

local TheHiddenWantedPoster = 5393

function spawn(NPC)
SetPlayerProximityFunction(NPC, 3, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, TheHiddenWantedPoster) and not HasCompletedQuest(Spawn,  TheHiddenWantedPoster) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
    end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine table' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Look under table. ", "offer")
               AddConversationOption(conversation, "Move table aside.")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You see something poking out from under the broken table.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine table", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end



function check(NPC, Spawn)
     if not HasQuest(Spawn, TheHiddenWantedPoster) and not HasCompletedQuest(Spawn,  TheHiddenWantedPoster) then
              SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine table", 1)
end
   end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheHiddenWantedPoster)
         conversation = CreateConversation()
          AddConversationOption(conversation, "I will bring them to justice.")
           AddConversationOption(conversation, "exit")
                StartDialogConversation(conversation, 1, NPC, Spawn, "Once you move the table aside you see a Qeynos wanted poster torn in half seeking the heads of Bloodsaber sentinels.  You should bring them to justice for the city of Qeynos!")
end

function respawn(NPC)
	spawn(NPC)
end