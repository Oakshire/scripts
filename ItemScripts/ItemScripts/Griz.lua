--[[
	Script Name		:	ItemScripts/Griz.lua
	Script Purpose	:	the item Griz
	Script Author	:	theFoof
	Script Date		:	2013.8.26
	Script Notes	:	
--]]
local SometimesKnut = 84

function GrizChat1_1(Item, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I will never doubt him again.")
	StartDialogConversation(conversation, 4, Item, Spawn, "Yes.  Griz real.  Knut's friend.")
end

function GrizChat2_1(Item, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 2 then
		SetStepComplete(Spawn, SometimesKnut, 2)
		AddSpawnAccess(GetSpawnByLocationID(Zone, 579551), Spawn)
	end
	if GetQuestStep(Spawn, SometimesKnut) == 2 or GetQuestStep(Spawn, SometimesKnut) == 3 then
		if HasItemEquipped(Spawn, 157116) then
			conversation = CreateConversation()
			AddConversationOption(conversation, "I don't think it has guts.")
			AddConversationOption(conversation, "All right, I'm doing it!")
			StartDialogConversation(conversation, 4, Item, Spawn, "Grrrrrrrrrrr. I said strike! Claw it to bits!  Tear it open, and spell its guts upon the ice!")
		end
	end
end