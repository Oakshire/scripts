--[[
	Script Name	: SpawnScripts/Darklight/acommoner_female.lua
	Script Purpose	: a commoner 
	Script Author	: John Adams
	Script Date	: 2009.02.01
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

	choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_1_hail_b1b63b87.mp3", "Have you heard of Thelia N'Fyre, the head druid of the Shadow Oak? I hear the queen hates her. Yet nothing is done to rid Darklight of her presence.", "", 1904965620, 1308949760, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_2_hail_9377d0e.mp3", "Hate's Envy provides Neriak with a lot of raw ore and hard-working citizens. I think that may be why Cristanos lets them get away with such a lenient immigration policy.", "", 1200644794, 2494823979, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_1_hail_19fa8ff4.mp3", "How powerful would the queen be without her little Arasai?", "", 4101507312, 2547888971, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_2_hail_152f9f1a.mp3", "Carthen Olaren? No, I haven't heard of him.", "", 2967499882, 516031018, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_2_hail_4328c090.mp3", "Have you heard anything about that cult of flame worshippers?", "", 2837642152, 2610770669, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_female_1_hail_8bd689db.mp3", "I traveled through Nektulos Forest once. I do not wish to return until the Dread Guard has moved deeper in.", "", 2428812410, 2772763963, Spawn)
	else
	end

end

