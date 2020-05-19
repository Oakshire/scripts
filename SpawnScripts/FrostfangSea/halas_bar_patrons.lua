--[[
	Script Name		:	SpawnScripts/FrostfangSea/halas_bar_patrons.lua
	Script Purpose	:	bar patrons in halas
	Script Author	:	theFoof
	Script Date		:	2013.10.30
	Script Notes	:	
--]]

function spawn(NPC)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end

function EmoteLoop(NPC)
	local choice = math.random(1,4)
	local emote
	if choice == 1 then
		emote = "flex"
	elseif choice == 2 then
		emote = "stretch"
	elseif choice == 3 then
		emote = "point"
	elseif choice == 4 then
		emote = "peer"
	end
	PlayFlavor(NPC, "", "", emote, 0, 0)
	AddTimer(NPC, math.random(15000,45000), "EmoteLoop")
end