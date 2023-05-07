--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Burgun.lua
	Script Purpose	: Burgun
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Fantastic! Sensational!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "You have all come very far. It is an inspiration and a testament to the strengths of our people.", "", 0, 0, Spawn, 0)
	end
end