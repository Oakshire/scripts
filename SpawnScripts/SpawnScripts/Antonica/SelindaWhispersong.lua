--[[
	Script Name		:	SelindaWhispersong-Say.lua
	Script Purpose	:	Selinda Whispersong
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


	Say(NPC, "If you're looking for a challenge, you might want to speak with Cru Naseto, and he'll explain our circuit", Spawn)

end