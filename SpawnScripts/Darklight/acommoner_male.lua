--[[
	Script Name	: SpawnScripts/Darklight/acommoner_male.lua
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

	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_male_2_hail_58c66ab7.mp3", "I wonder if the fish from the Smoldering Lake cook faster or slower than regular fish.", "", 2182244469, 5251268, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_male_1_hail_b1bbdb6e.mp3", "I hear the Commonlands is a dreadful place to visit, yet bursting with opportunity.", "", 4265645297, 2801909364, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_male_1_hail_b0812908.mp3", "The Nektulos Forest is overrun by Thexians. They're scum.", "", 1643402937, 3453636706, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/neriak/a_commoner/darklight_wood/service/commoner_male_2_hail_2c86194f.mp3", "The Wanderlust fair is a wonderful place to spend time.", "", 1622760460, 2576330323, Spawn)
	else
	end

end

