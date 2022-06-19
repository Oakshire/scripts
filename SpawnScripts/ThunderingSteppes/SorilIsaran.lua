--[[
    Script Name    : SpawnScripts/ThunderingSteppes/SorilIsaran.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 12:06:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn,7)then
        local choice = MakeRandomInt(1,3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_steppes/ft/halfelf/halfelf_steppes_1_garbled_gm_c175ec10.mp3", "Shauhey  alham  yeena   sowee", "", 2026462892, 3464042667, Spawn, 7)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_steppes/ft/halfelf/halfelf_steppes_1_garbled_gm_8436f046.mp3", "Falada meirsyn kobalas nolvalen", "", 4090933674, 2398927273, Spawn, 7)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_steppes/ft/halfelf/halfelf_steppes_1_garbled_gm_84555678.mp3", "Thayank  dav sien  flanahay", "", 3624139387, 34883535, Spawn, 7)

else
		PlayFlavor(NPC, "", "I am going with Coy to help him on his mission.  He has paid me well, and the chance for even greater wealth lies in the possession of the centaurs.", "", 0, 0, Spawn, 7)
	end
end        
end


function death(NPC,Spawn)
     if not HasLanguage(Spawn,7)then
		PlayFlavor(NPC, "voiceover/english/halfelf_steppes/ft/halfelf/halfelf_steppes_1_garbled_gm_feb1d2e4.mp3", "Pohow arged yoop dern todica, arrrrrg!", "", 918139634, 115287037, Spawn, 7)
        else   
		PlayFlavor(NPC, "voiceover/english/halfelf_steppes/ft/halfelf/halfelf_steppes_1_death_gm_354f0220.mp3", "Death of kin will be avenged.", "", 379174005, 1811830590, Spawn, 7)
end
end

function respawn(NPC)
	spawn(NPC)
end