--[[
    Script Name    : SpawnScripts/Edgewater/widgetsmallmachine.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 05:07:35
    Script Purpose : 
                   : 
--]]

local TheMucusFeedingMachine = 5288

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, TheMucusFeedingMachine) and not HasCompletedQuest(Spawn,  TheMucusFeedingMachine) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine machine", 5, "examine machine", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine machine' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Read plate", "offer")
               AddConversationOption(conversation, "Leave it alone")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a small machine with a brass plate attached to the front.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine machine", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMucusFeedingMachine)
conversation = CreateConversation()
AddConversationOption(conversation, "I should destroy them")
StartDialogConversation(conversation, 1, NPC, Spawn, "The brass plate reads: \"Drudge Mucus Auto-Feeder.\"  Who in the world would want to feed those things, let alone let them exist at all!?")
end

function check(NPC, Spawn)
     if not HasQuest(Spawn,  TheMucusFeedingMachine) and not HasCompletedQuest(Spawn,  TheMucusFeedingMachine) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine machine", 1)
end
   end