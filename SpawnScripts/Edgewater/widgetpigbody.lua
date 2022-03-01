--[[
    Script Name    : SpawnScripts/Edgewater/widgetpigbody.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 06:07:41
    Script Purpose : 
                   : 
--]]

local DangerousWaters = 5289

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", Spawn)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, DangerousWaters) and not HasCompletedQuest(Spawn,  DangerousWaters) then
     AddPrimaryEntityCommand(Spawn, NPC, "examine corpse", 5, "examine corpse", "", 100) 
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine corpse' then
               conversation = CreateConversation()
               AddConversationOption(conversation, "Look closer", "offer")
               AddConversationOption(conversation, "Ignore it")
                StartDialogConversation(conversation, 1, NPC, Spawn, "You find a ravaged carcass of some poor animal in the bottom of the sewer.")
                   SetAccessToEntityCommand(Spawn,NPC,"examine corpse", 0)
     SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    AddTimer(NPC, 10000, "check", 1, Spawn)
    end
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn,  DangerousWaters)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will hunt them down.")
StartDialogConversation(conversation, 1, NPC, Spawn, "Looking closer you can see a myriad of bite marks and gouges where needleteeth took their fill of its flesh.  With the Edgewater Drains being so open to the sea, it's no wonder that such dangerous creatures lurk around in its depths.  I should rid the sewer of the massive needleteeth.")            
end


function check(NPC, Spawn)
     if not HasQuest(Spawn,  DangerousWaters) and not HasCompletedQuest(Spawn,   DangerousWaters) then
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)
    SetAccessToEntityCommand(Spawn,NPC,"examine corpse", 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end