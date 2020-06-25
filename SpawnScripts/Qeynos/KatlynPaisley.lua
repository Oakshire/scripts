--[[
	Script Name	: SpawnScripts/SouthQeynos/KatlynPaisley.lua
	Script Purpose	: Katlyn Paisley <Jeweler>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gf_ec533e4c.mp3", "Are you wounded?  I just made up a fresh batch of healing potions an hour ago.", "happy", 1500961965, 3983451170, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gf_59de96bd.mp3", "What happened to the highly explosive bottle that was on my desk?  Have you seen it?", "ponder", 169654516, 1865961096, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/alchemist/human_alchemist_service_good_1_hail_gf_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 4217995721, 116037177, Spawn)
	else
	end

end

