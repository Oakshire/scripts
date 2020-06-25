--[[
	Script Name		:	TylliaNavar-Say.lua
	Script Purpose	:	Tyllia Navar
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


	Say(NPC, "I have heard stories and legends, but I have never seen the gnolls march like an army should.", Spawn)

end