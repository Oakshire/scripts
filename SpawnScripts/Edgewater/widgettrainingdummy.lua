--[[
    Script Name    : SpawnScripts/Edgewater/widgettrainingdummy.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 09:07:46
    Script Purpose : 
                   : 
--]]

local ADangerousLesson = 5286

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)  
end


function InRange(NPC, Spawn)
 if not HasQuest(Spawn, ADangerousLesson) and not HasCompletedQuest(Spawn,  ADangerousLesson) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine dummy", 5, "examine dummy", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine dummy' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Read note", "offer")
               AddConversationOption(conversation, "Don't read")
                StartDialogConversation(conversation, 1, NPC, Spawn, "There is a note pinned to the training dummy.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine dummy", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ADangerousLesson)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will kill the toads")
StartDialogConversation(conversation, 1, NPC, Spawn, "The note reads: \"You shouldn't waste your time hitting this down here when there are moving targets you can learn from.  Go kill some bile toad foragers for a real lesson!\" ")
end


function check(NPC, Spawn)
     if not HasQuest(Spawn,  ADangerousLesson) and not HasCompletedQuest(Spawn,  ADangerousLesson) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine dummy", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end