--[[
	Script Name	: SpawnScripts/TheBaubbleshire/NylaDiggs.lua
	Script Purpose	: Nyla Diggs 
	Script Author	: Dorbin
	Script Date	: 2022.01.10
	Script Notes	: Manual Racial Designation/Old Quest Building
--]]

local PieThief = 5436
function spawn(NPC)
    ProvidesQuest (NPC, PieThief)
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
	
if not HasLanguage(Spawn, 8) then -- Language Check for Stout (8)
	local choice = math.random(1,2)
	end
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "garbled text not to be translated", "", 1486303618, 2371451914, Spawn, 8)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "garbled text not to be translated", "", 3051197299, 2401133915, Spawn, 8)
 
    elseif HasLanguage(Spawn, 8) then

         PlayFlavor(NPC, mp3, "Oh, why hello there dear. How are you today? Afraid I can't talk right now", "", 991095436, 863644706, Spawn)
   end

end

