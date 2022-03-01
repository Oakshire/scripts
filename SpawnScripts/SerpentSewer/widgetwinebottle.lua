--[[
    Script Name    : SpawnScripts/SerpentSewer/widgetwinebottle.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.01 05:07:59
    Script Purpose : 
                   : 
--]]

local ZizlsMessageIntheBottle = 5266

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ZizlsMessageIntheBottle) and not HasCompletedQuest(Spawn,  ZizlsMessageIntheBottle) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Open' then
               OfferQuest(NPC, Spawn, ZizlsMessageIntheBottle)
               conversation = CreateConversation()
               AddConversationOption(conversation, "Get note", "dlg1")
               AddConversationOption(conversation, "Ignore it")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You are able to see that there is a note inside the bottle.")
                   SetAccessToEntityCommand(Spawn,NPC,"Leave the supplies", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function check(NPC, Spawn)
     if not HasQuest(Spawn, ZizlsMessageIntheBottle) and not HasCompletedQuest(Spawn,  ZizlsMessageIntheBottle) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
   end


function dlg1(NPC, Spawn)
local con = CreateConversation()
AddConversationOption(con, "I should find and free Zizl")
StartDialogConversation(con, 1, NPC, Spawn, "After fishing the bottle out of the water and retrieving the note you read: \"Help! Abettors have me captive!  Zizl.\"")
end

function respawn(NPC)
	spawn(NPC)
end