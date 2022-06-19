--[[
    Script Name    : SpawnScripts/ThunderingSteppes/KoregBaelstrom.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 01:06:58
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
waypoints(NPC)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,1)then
    local choice = MakeRandomInt(1,4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 1338663568, 2860304215, Spawn, 1)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_f1b9e87a.mp3", "Uf envoudig een van uw gekozen en enkel geven om Vensters", "", 3095091783, 3153428791, Spawn, 1)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 1338663568, 2860304215, Spawn, 1)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_b80c3123.mp3", "Asfkher van baed rijs prakti kjen ", "", 1248648431, 1559755809, Spawn, 1)
    end
else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "Out of the way if you ain't gonna help.  I gotta clear these barrels from the docks and ready them for shipment to Thundermist.", "", 0, 0, Spawn, 1)
	end
end        

function respawn(NPC)
	spawn(NPC)
end

function death(NPC,Spawn)
     if not HasLanguage(Spawn,1)then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_garbled_gm_1d4e2601.mp3", "Zergen oer steb liteit", "", 1881495348, 2631084324, Spawn, 1)
        else   
    local choice = MakeRandomInt(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_death_gm_15be5319.mp3", "No! All that we worked for is for naught...", "", 2280226905, 3776829383, Spawn, 1)
 	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_1_death_gm_60ab074d.mp3", "My clansmen will avenge me!", "", 2840994277, 1500014795, Spawn, 1)
    end   
end
end



function waypoints(NPC)
	MovementLoopAddLocation(NPC, -428.38, -21.03, -404.45, 2, 1)
	MovementLoopAddLocation(NPC, -428.38, -21.03, -404.45, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -455.35, -21.03, -403.86, 2, 0)
	MovementLoopAddLocation(NPC, -463.37, -21.03, -403.49, 2, 0)
	MovementLoopAddLocation(NPC, -472.33, -21.03, -403.28, 2, 0)
	MovementLoopAddLocation(NPC, -475.18, -21.03, -403.81, 2, 1)
	MovementLoopAddLocation(NPC, -475.18, -21.03, -403.81, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -476.49, -21.03, -404.89, 2, 0)
	MovementLoopAddLocation(NPC, -476.94, -21.03, -402.7, 2, 0)
	MovementLoopAddLocation(NPC, -473.56, -21.03, -403.09, 2, 0)
	MovementLoopAddLocation(NPC, -468.61, -21.03, -403.24, 2, 0)
	MovementLoopAddLocation(NPC, -467.78, -21.03, -399.45, 2, 1)
	MovementLoopAddLocation(NPC, -467.78, -21.03, -399.45, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -466.74, -21.03, -398.55, 2, 0)
	MovementLoopAddLocation(NPC, -449.41, -21.03, -397.3, 2, 1)
	MovementLoopAddLocation(NPC, -449.41, -21.03, -397.3, 2, 15,"EcologyEmotes")
	MovementLoopAddLocation(NPC, -448.24, -21.03, -396.52, 2, 0)
	MovementLoopAddLocation(NPC, -445.9, -21.03, -398.27, 2, 0)
	MovementLoopAddLocation(NPC, -427.07, -21.03, -405.18, 2, 1)
	MovementLoopAddLocation(NPC, -427.07, -21.03, -405.18, 2, 15,"EcologyEmotes")
end


