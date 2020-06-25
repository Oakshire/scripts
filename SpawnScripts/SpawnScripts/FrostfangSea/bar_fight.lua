--[[
	Script Name		:	SpawnScripts/FrostfangSea/bar_fight.lua
	Script Purpose	:	makes an npc emote for a bar fight
	Script Author	:	theFoof
	Script Date		:	2013.9.26
	Script Notes	:	
--]]

require"SpawnScripts/Generic/hello_emote"

function spawn(NPC)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	hello(NPC, Spawn)
end

function EmoteLoop(NPC)
	AddTimer(NPC, math.random(3000,15000), "EmoteLoop")
	local choice = math.random(1,6)
	if choice == 1 then
		PlayFlavor(NPC, "", "", "shrug", 0, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "", "peer", 0, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "", "stretch", 0, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "", "yawn", 0, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "", "tap foot", 0, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "", "sigh", 0, 0)
	end
end 