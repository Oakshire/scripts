--[[
	Script Name		: SpawnScripts/ScaleYard/BarmaidFrostwind.lua
	Script Purpose	: Barmaid Frostwind
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/baker/barbarian_baker_service_evil_1_hail_gf_8e1011d3.mp3", "Hey you want that spicy cake to go?  Be careful, that one will singe your nose hairs!", "wince", 1388904577, 4280786185, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/baker/barbarian_baker_service_evil_1_hail_gf_3454f243.mp3", "The Ogre bread takes an extra long time to bake.  Hey, they like large servings.", "nod", 3269011006, 1976908720, Spawn, 0)
	end
end