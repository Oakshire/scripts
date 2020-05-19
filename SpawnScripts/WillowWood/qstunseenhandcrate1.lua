--[[
	Script Name	: SpawnScripts/WillowWood/qst_unseenhand_crate_1.lua
	Script Purpose	: qst_unseenhand_crate_1
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local WOODELF_MENTOR_QUEST_3 = 215

function spawn(NPC)
	SetRequiredQuest(NPC, WOODELF_MENTOR_QUEST_3, 3)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, WOODELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, WOODELF_MENTOR_QUEST_3) == 3 and SpellName == "Examine" then
		SendMessage(Spawn, "It looks like the wolf has been here recently. A trail of items that were once in the cart, and wolf tracks, lead to the east.")
		SetStepComplete(Spawn, WOODELF_MENTOR_QUEST_3, 3)
	end
end