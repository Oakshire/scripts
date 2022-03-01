--[[
    Script Name    : SpawnScripts/Commonlands/BoatWidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:13
    Script Purpose : 
                   : 
--]]

local AnAbandonedBoat = 5231

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end


function InRange(NPC, Spawn)
if not HasQuest(Spawn, AnAbandonedBoat) and not HasCompletedQuest(Spawn, AnAbandonedBoat) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "examine boat", 3, "", "", 100, "")
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine boat' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Read the note.", "offer")
	       AddConversationOption(con, "Leave it be.")
	        StartDialogConversation(con, 1, NPC, Spawn, "You find a boat in good condition with a note lying in the bottom of the hull.")
end	
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, AnAbandonedBoat)
    local con = CreateConversation()
    AddConversationOption(con, "I'll get those hounds!")
    AddConversationOption(con, "Hide note.")
    StartDialogConversation(con, 1, NPC, Spawn, "The note reads, ''The boat is great, but the fishing is terrible!  I'm not risking my neck out here with those carrion hounds lurking around the water all the time!")
    AddTimer(NPC, 150, "remove_access", 1, Spawn)
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, AnAbandonedBoat) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "examine boat", 3)
end       
    end



function respawn(NPC)
	spawn(NPC)
end