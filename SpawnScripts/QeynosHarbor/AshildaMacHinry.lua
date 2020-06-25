--[[
	Script Name	: SpawnScripts/QeynosHarbor/AshildaMacHinry.lua
	Script Purpose	: Ashilda MacHinry 
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
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_2a467de4.mp3", "I fear no man or beast.", "flex", 2128441275, 1043815687, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_ec4612.mp3", "Always be vigil, you never know when evil will strike.", "lookaway", 1096415868, 4151719434, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_65c7cb8c.mp3", "There is always a way, if desire is coupled with courage.", "scold", 1919974860, 3511707276, Spawn)
	else
	end

end

