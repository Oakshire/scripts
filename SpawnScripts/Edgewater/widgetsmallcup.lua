--[[
    Script Name    : SpawnScripts/Edgewater/widgetsmallcup.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 08:07:33
    Script Purpose : 
                   : 
--]]

local CrabMeatHunt = 5285

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, CrabMeatHunt) and not HasCompletedQuest(Spawn,  CrabMeatHunt) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine cup", 5, "examine cup", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine barrel' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Look inside", "offer")
               AddConversationOption(conversation, "Ignore cup")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a small cup that appears to have something inside of it.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine cup", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn,  CrabMeatHunt)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will hunt crabs")
StartDialogConversation(conversation, 1, NPC, Spawn, "Inside of the cup you find some crab meat.  Crab meat sounds pretty good right about now, and at the very least you can always sell what you don't eat.")            
end

function check(NPC, Spawn)
     if not HasQuest(Spawn,  CrabMeatHunt) and not HasCompletedQuest(Spawn,   CrabMeatHunt) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine cup", 1)
end
   end


function respawn(NPC)
	spawn(NPC)
end