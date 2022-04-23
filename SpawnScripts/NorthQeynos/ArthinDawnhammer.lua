--[[
	Script Name		: SpawnScripts/NorthQeynos/ArthinDawnhammer.lua
	Script Purpose	: Arthin Dawnhammer
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_e796f41.mp3", "The Ironforge Exchange neglects the spiritual through its devotion to the physical materials and pleasures of this world.", "", 1452894482, 3882311847, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_d1a0f4da.mp3", "The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities.", "", 3161458185, 1498528167, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_1a077d47.mp3", "The Qeynos Guard blindly strikes at the darkness rather than see the opportunity for redemption that lies within even the most lost of us.", "", 970013852, 575367438, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_87dd538b.mp3", "Were they to encounter a god, the Concordium would drop their staves and bow before the might of a true power.", "", 3531845971, 679110479, Spawn, 0)
	end
end