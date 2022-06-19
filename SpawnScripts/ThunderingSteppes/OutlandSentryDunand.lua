--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OutlandSentryDunand.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 01:06:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC,Spawn)
    	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_steppes/ft/human/human_steppes_1_death_gm_85ef3300.mp3", "No!  That was my friend!", "", 572896703, 552083718, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_steppes/ft/human/human_steppes_1_death_gm_f56b206a.mp3", "At least they died with their boots on.", "", 2785078984, 3057500781, Spawn, 0)
	end
end