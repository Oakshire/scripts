--[[
	Script Name		:	CruNaseto-Say.lua
	Script Purpose	:	Cru Naseto
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner, Say()'s ONLY
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)


	Say(NPC, "Come back later. You look like a good runner.", Spawn)

end