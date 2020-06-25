--[[
	Script Name	: SpawnScripts/Castleview/TaneranthalisNedaiveren.lua
	Script Purpose	: Taneranthalis Nedaiveren 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_callout_b8c9bef.mp3", "Please be at ease. Though we stand outside the great gates of the city proper, you are as safe in Castleview as anywhere in Norrath!", "", 4095321012, 2558651917, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_multhail1_d1775db6.mp3", "Please move on, traveler. I must attend to important business matters.", "", 3098654696, 1348141498, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/taneranthalis_nedaiveren/qey_village04/100_park_taneranthalis_multhail2_c2e4d5a7.mp3", "It seems like just yesterday I was a small child brought to Qeynos from Felwithe. Though its white towers are but a distant memory, the Koada'dal in Castleview keep the elven spirit alive.", "", 2103458666, 2948247370, Spawn)
	end
end