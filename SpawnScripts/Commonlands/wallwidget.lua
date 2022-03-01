--[[
    Script Name    : SpawnScripts/Commonlands/wallwidget.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.25 07:05:41
    Script Purpose : 
                   : 
--]]

local CompletingACowardsJob = 5236

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end
function InRange(NPC, Spawn)
if not HasQuest(Spawn, CompletingACowardsJob) and not HasCompletedQuest(Spawn, CompletingACowardsJob) then
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
AddPrimaryEntityCommand(Spawn, NPC, "examine wall", 3, "", "", 100, "")
end
end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'examine wall' then
		 local con = CreateConversation()
		  AddConversationOption(con, "Read parchment.", "option1")
	       AddConversationOption(con, "Leave the parchment where it is.")
	        StartDialogConversation(con, 1, NPC, Spawn, "You see a piece of folded parchment between the stones in the crumbling wall.")
end	
end

function option1(NPC, Spawn)
         OfferQuest(NPC, Spawn, CompletingACowardsJob)
		 local con = CreateConversation()
		  AddConversationOption(con, "I shall slay the Bloodskull warriors.")
	       AddConversationOption(con, "exit")
	        StartDialogConversation(con, 1, NPC, Spawn, "The parchment is a decree from the Overlord, condemning the Bloodskull warriors.  Whoever left this here must have been too scared to carry out the task he was assigned.  Perhaps I should fulfill this task, and prove my loyalty.")
	        AddTimer(NPC, 150, "remove_access", 1, Spawn)
end

function remove_access(NPC, Spawn)
       if HasQuest(Spawn, CompletingACowardsJob) then
		SpawnSet(NPC, "display_hand_icon", 0)
       SpawnSet(NPC, "show_command_icon", 0)
        RemovePrimaryEntityCommand(Spawn, NPC, "examine wall", 3)
end       
    end


function respawn(NPC)
	spawn(NPC)
end