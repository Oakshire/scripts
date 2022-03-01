--[[
    Script Name    : SpawnScripts/Commonlands/widgetwidgetgigglingorcx1.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 08:05:37
    Script Purpose : 
                   : 
--]]

local TheGigglingOrc = 5238

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, TheGigglingOrc) and not HasCompletedQuest(Spawn, TheGigglingOrc) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Examine", 3, "", "", 100, "")
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Read the poster", "option1")
	       AddConversationOption(con, "Ignore the poster")
	        StartDialogConversation(con, 1, NPC, Spawn, "You have found a parchment under this stone.  It seems to be a wanted poster with a crudely hand drawn picture of a smiling orc.")
end	
end

function option1(NPC, Spawn)
         OfferQuest(NPC, Spawn, TheGigglingOrc)
		 local con = CreateConversation()
		  AddConversationOption(con, "I will wipe the smile off that Orc's face!")
	        StartDialogConversation(con, 1, NPC, Spawn, "There are a few words crudely written on the poster.  After studying the poster for some time you make out...  ''Orc giggling too much.  Want orc dead or not smiling no more.''")
	        AddTimer(NPC, 150, "remove_access", 1, Spawn)
	        
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, TheGigglingOrc) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "Examine", 3)
end       
    end


function respawn(NPC)
	spawn(NPC)
end