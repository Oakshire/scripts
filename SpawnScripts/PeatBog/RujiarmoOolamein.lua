--[[
	Script Name	: SpawnScripts/PeatBog/RujiarmoOolamein.lua
	Script Purpose	: Rujiarmo Oolamein 
	Script Author	: Image
	Script Date	: 2020.05.08
	Script Notes	: n/a
	
--]]

function spawn(NPC)

	end


function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/qst_rujiarmo_notonquest_b6d4b896.mp3", "The Peat Bog is not generally a welcoming place.", "", 2352765409, 3955567131, Spawn)		
end