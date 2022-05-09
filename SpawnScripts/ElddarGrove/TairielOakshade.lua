--[[
	Script Name	: SpawnScripts/ElddarGrove/TairielOakshade.lua
	Script Purpose	: Tairiel Oakshade 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
function spawn(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
    else
SaySomething(NPC, Spawn)
end
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
    if math.random(1,100) <=30 then
    SaySomething(NPC, Spawn)
    end
    end
end
function SaySomething(NPC, Spawn)
    
	FaceTarget(NPC, Spawn)
		local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_1bda6347.mp3", "The destructive methods of the Qeynos Guard will ravage that which it seeks to defend.", "nod", 421213855, 4168573173, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_e274bc0f.mp3", "The mechanical beasts of the Ironforge Exchange belch forth black clouds to choke out life within the forests.", "", 1242578412, 4198131350, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_c57df74b.mp3", "I fear that the Concordium is unable to control its disciples. If corrupted the sorcerers would surely bring harm to the woodlands and their creatures.", "ponder", 63339104, 2681140716, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_2c2d0ef6.mp3", "The Tunarian Alliance preserves our memories of the breathing trees and singing streams of Jaggedpine.", "agree", 1912930054, 3530428976, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_tunarianalliance/ft/eco/good/human_eco_good_tunarianalliance_hail_gm_24723d84.mp3", "While the land suffers and cries out for immediate protection the Celestial Watch is content to look to myths and superstitions for our salvation.", "agree", 1704735533, 1025969438, Spawn)
	else
	end
end