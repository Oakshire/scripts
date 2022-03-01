--[[
	Script Name	: SpawnScripts/Ruins/Widget_orc_document_box.lua
	Script Purpose	: Widget_orc_document_box
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 288, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end