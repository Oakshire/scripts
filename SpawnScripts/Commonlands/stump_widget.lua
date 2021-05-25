--[[
    Script Name    : SpawnScripts/Commonlands/stump_widget.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 09:05:29
    Script Purpose : 
                   : 
--]]

local AnEngravedStump = 5232

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end


function InRange(NPC, Spawn)
if not HasQuest(Spawn, AnEngravedStump) and not HasCompletedQuest(Spawn, AnEngravedStump) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "examine stump", 3, "", "", 100, "")
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine stump' then
		 OfferQuest(NPC, Spawn, AnEngravedStump)
		 local con = CreateConversation()
		  AddConversationOption(con, "Examine carving.", "option1")
	       AddConversationOption(con, "I'm not interested in this.")
	        StartDialogConversation(con, 1, NPC, Spawn, "You see a weather worn engraving carved into the side of the tree stump.")
end	
end


function option1(NPC, Spawn)
		 local con = CreateConversation()
		  AddConversationOption(con, "I could easily kill more!")
	       AddConversationOption(con, "exit")
	        StartDialogConversation(con, 1, NPC, Spawn, "You can read the words ''Kerran rogue kill count'' on the side of the stump.  Below the words are 25 markings carved out of the wood.")
	        AddTimer(NPC, 150, "remove_access", 1, Spawn)
	        
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, AnEngravedStump) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "examine stump", 3)
end       
    end

function respawn(NPC)
	spawn(NPC)
end