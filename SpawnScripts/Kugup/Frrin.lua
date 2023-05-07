--[[
	Script Name		: SpawnScripts/TheLostVillageofKugup/Frrin.lua
	Script Purpose	: Frrin
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
		PlayFlavor(NPC, "", "Hrumph... Well, I've got plenty more anyways...", "", 0, 0, Spawn, 0) --quest
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Hey! What do you think you're doing? That's mine! Give it back!", "curse", 0, 0, Spawn, 0) --quest
	end
end