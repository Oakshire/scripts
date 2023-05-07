--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Repmuj.lua
	Script Purpose	: Repmuj
	Script Author	: neatz09
	Script Date		: 2023.05.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Reppoh! Give me back my ball!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Stop fooling around and gimme it Reppoh!", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "REPPOH GIVE ME MY BALL!", "", 0, 0, Spawn, 0)
	end
end