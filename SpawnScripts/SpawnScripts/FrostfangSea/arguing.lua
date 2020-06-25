--[[
	Script Name		:	SpawnScripts/FrostfangSea/arguing.lua
	Script Purpose	:	for npcs arguing in halas
	Script Author	:	theFoof
	Script Date		:	2013.9.26
	Script Notes	:	
--]]

function spawn(NPC)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0 , Spawn)
	FaceTarget(NPC, Spawn)
end

function EmoteLoop(NPC)
	local choice = math.random(1,5)
	if choice == 1 then
		PlayFlavor(NPC, "", "", "no", 0, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "", "agree", 0, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "", "frustrated", 0, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "", "whome", 0, 0)
	end
	AddTimer(NPC, math.random(3000,15000), "EmoteLoop")
end