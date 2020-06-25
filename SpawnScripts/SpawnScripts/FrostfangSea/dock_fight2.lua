--[[
	Script Name		:	SpawnScripts/FrostfangSea/dock_fight2.lua
	Script Purpose	:	the unarmed NPC fighting on halas docks
	Script Author	:	theFoof
	Script Date		:	2013.10.30
	Script Notes	:	
--]]

function spawn(NPC)
	EmoteLoop(NPC)
	SpawnSet(NPC, "emote_state", "16")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end

function EmoteLoop(NPC)
	local choice = math.random(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "", "", "attack", 0, 0)
	elseif choice == 2 then
		PlayAnimation(NPC, 11764)
	else
		PlayAnimation(NPC, 11890)
	end
	AddTimer(NPC, math.random(1000,5000), "EmoteLoop")
end