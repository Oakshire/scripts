--[[
    Script Name    : SpawnScripts/ThunderingSteppes/widgetsmallbarrel.lua
    Script Author  : Jabantiz
    Script Date    : 2015.05.09 07:05:53
    Script Purpose : 
                   : 
--]]

local HuntingTheHuntresses = 118

function spawn(NPC)
	SetRequiredQuest(NPC, HuntingTheHuntresses, 1, 0, 1, 258)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if not HasQuest(Spawn, HuntingTheHuntresses) and not HasCompletedQuest(Spawn, HuntingTheHuntresses) then
		if Message == "Examine Barrel" then
			local con = CreateConversation()
		    
			AddConversationOption(con, "Look in barrel.", "LookInBarrel")
			AddConversationOption(con, "Leave it alone.", "Close")
			StartDialogConversation(con, 1, NPC, Spawn, "You find a small barrel with its top slightly ajar.")
		end
	end
end

function LookInBarrel(NPC, Spawn)
	OfferQuest(NPC, Spawn, HuntingTheHuntresses)
end

function Close(NPC, Spawn)
	CloseConversation(NPC, Spawn)
end

