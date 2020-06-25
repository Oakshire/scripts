--[[
	Script Name	: SpawnScripts/FrostfangSea/TimelessChronomage.lua
	Script Purpose	: Timeless Chronomage
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Greetings! Would you like me to chronolock you? For a small fee of course...", "hello", 0, 0, Spawn)
end