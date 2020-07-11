--[[
	Script Name	: SpawnScripts/EnchantedLands/AsheBoderra.lua
	Script Purpose	: Ashe Boderra 
	Script Author	: Cynnar
	Script Date	: 2015.04.01
	Script Notes	: Manually Created
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	Emote(NPC, "Salute.")
end
