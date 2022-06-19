--[[
    Script Name    : SpawnScripts/ThunderingSteppes/UmaDrandamir.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 01:06:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,1)then
    local choice = MakeRandomInt(1,4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_3_garbled_gf_f1b9e87a.mp3", "Uf envoudig een van uw gekozen en enkel geven om Vensters", "", 1726710708, 3708905850, Spawn, 1)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_3_garbled_gf_1d4e2601.mp3", "Zergen oer steb liteit", "", 707675, 224549223, Spawn, 1)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_3_garbled_gf_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 2980125753, 2181905857, Spawn, 1)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_3_garbled_gf_b80c3123.mp3", "Asfkher van baed rijs prakti kjen ", "", 3873974123, 675447828, Spawn, 1)
    end
else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1001.mp3", "The safest way to Bridge Keep is around the mountains to the northwest.  Taking the road is always yer best bet.", "", 0, 0, Spawn, 1)
	end
end        



function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -461.72, -18.38, -445.97, 2, 15)
	MovementLoopAddLocation(NPC, -467.76, -18.38, -436.93, 2, 0)
	MovementLoopAddLocation(NPC, -469.14, -18.38, -419.19, 2, 15)
	MovementLoopAddLocation(NPC, -468.47, -18.38, -417.59, 2, 0)
	MovementLoopAddLocation(NPC, -451.43, -18.38, -418.85, 2, 0)
	MovementLoopAddLocation(NPC, -450.46, -18.38, -419.19, 2, 0)
	MovementLoopAddLocation(NPC, -449.77, -18.38, -418, 2, 0)
	MovementLoopAddLocation(NPC, -447.53, -18.38, -417.83, 2, 0)
	MovementLoopAddLocation(NPC, -439.03, -18.38, -417.04, 2, 15)
	MovementLoopAddLocation(NPC, -437.42, -18.38, -417.04, 2, 0)
	MovementLoopAddLocation(NPC, -436.32, -18.38, -423.62, 2, 0)
	MovementLoopAddLocation(NPC, -436.58, -18.38, -428.13, 2, 15)
	MovementLoopAddLocation(NPC, -437.78, -18.38, -429.49, 2, 0)
	MovementLoopAddLocation(NPC, -434.64, -18.38, -441.81, 2, 0)
	MovementLoopAddLocation(NPC, -437.41, -18.38, -444.28, 2, 0)
	MovementLoopAddLocation(NPC, -443.77, -18.38, -445.4, 2, 0)
	MovementLoopAddLocation(NPC, -454.7, -18.38, -448.57, 2, 15)
	MovementLoopAddLocation(NPC, -455.32, -18.38, -449.29, 2, 0)
	MovementLoopAddLocation(NPC, -472.15, -18.38, -440.33, 2, 15)
	MovementLoopAddLocation(NPC, -455.32, -18.38, -449.29, 2, 0)
	MovementLoopAddLocation(NPC, -454.7, -18.38, -448.57, 2, 15)
	MovementLoopAddLocation(NPC, -443.77, -18.38, -445.4, 2, 0)
	MovementLoopAddLocation(NPC, -437.41, -18.38, -444.28, 2, 0)
	MovementLoopAddLocation(NPC, -434.64, -18.38, -441.81, 2, 0)
	MovementLoopAddLocation(NPC, -437.78, -18.38, -429.49, 2, 0)
	MovementLoopAddLocation(NPC, -436.58, -18.38, -428.13, 2, 15)
	MovementLoopAddLocation(NPC, -436.32, -18.38, -423.62, 2, 0)
	MovementLoopAddLocation(NPC, -437.42, -18.38, -417.04, 2, 0)
	MovementLoopAddLocation(NPC, -439.03, -18.38, -417.04, 2, 15)
	MovementLoopAddLocation(NPC, -447.53, -18.38, -417.83, 2, 0)
	MovementLoopAddLocation(NPC, -449.77, -18.38, -418, 2, 0)
	MovementLoopAddLocation(NPC, -450.46, -18.38, -419.19, 2, 0)
	MovementLoopAddLocation(NPC, -451.43, -18.38, -418.85, 2, 0)
	MovementLoopAddLocation(NPC, -468.47, -18.38, -417.59, 2, 0)
	MovementLoopAddLocation(NPC, -469.14, -18.38, -419.19, 2, 15)
	MovementLoopAddLocation(NPC, -467.76, -18.38, -436.93, 2, 0)
	MovementLoopAddLocation(NPC, -461.72, -18.38, -445.97, 2, 15)
end


