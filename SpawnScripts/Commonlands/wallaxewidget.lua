--[[
    Script Name    : SpawnScripts/Commonlands/wallaxewidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 07:05:09
    Script Purpose : 
                   : 
--]]

local GrumsInspiringAxe = 5235

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, GrumsInspiringAxe) and not HasCompletedQuest(Spawn, GrumsInspiringAxe) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "Examine", 4)
end
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Examine' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Inspect axe. ", "option1")
	       AddConversationOption(con, "Ignore the axe.")
	        StartDialogConversation(con, 1, NPC, Spawn, "Upon the wall you see a shiny axe.")
end	
    end

function option1(NPC, Spawn)
         OfferQuest(NPC, Spawn, GrumsInspiringAxe)
		 local con = CreateConversation()
		  AddConversationOption(con, "I shall slay some giants!")
	       AddConversationOption(con, "exit")
	        StartDialogConversation(con, 1, NPC, Spawn, "To your astonishment, the name Grum is engraved on the pommel of the axe.  Grum the Giant Slayer is sung of in many a tavern in Freeport, he might possibly be famous all over Norrath!  Being a giant slayer could be a lucrative and glorious profession!")
	        AddTimer(NPC, 150, "remove_access", 1, Spawn)
	        
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, GrumsInspiringAxe) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "Examine", 4)
end       
    end


function respawn(NPC)
	spawn(NPC)
end