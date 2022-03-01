--[[
	Script Name		:	SpawnScripts/Starcrest/questrelicboxmaareona.lua
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local HIDDEN_TREASURES = 320

-- Item ID's
local SMALL_METAL_BOX_AND_PAPER = 12950

function spawn(NPC)
	SetRequiredQuest(NPC, HIDDEN_TREASURES, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "Inspect Box" and HasQuest(Spawn, HIDDEN_TREASURES) and GetQuestStep(Spawn, HIDDEN_TREASURES) == 1 then
		local con = CreateConversation()
		
		AddConversationOption(con, "Open the box.", "OpenBox")
		StartDialogConversation(con, 1, NPC, Spawn, "This box does not appear to be very old. It would be impossible to pull through the grate, but you may be able to open it and take what is inside.")
	end
end

function OpenBox(NPC, Spawn)
	local con = CreateConversation()
	
	AddConversationOption(con, "Take the box and paper.", "TakeBox")
	StartDialogConversation(con, 1, NPC, Spawn, "Inside the box there is a smaller, metal box. There is also a piece of paper that is now soaking. It would be easy to pull both of these objects through the grate.")
end

function TakeBox(NPC, Spawn)
	SummonItem(Spawn, SMALL_METAL_BOX_AND_PAPER, 1)
	SetStepComplete(Spawn, HIDDEN_TREASURES, 1)
	local con = CreateConversation()
	
	AddConversationOption(con, "Leave the large box alone.", "CloseConversation")
	StartDialogConversation(con, 1, NPC, Spawn, "Nothing left in the larger box.")
end