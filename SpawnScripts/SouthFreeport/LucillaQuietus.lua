--[[
    Script Name    : SpawnScripts/SouthFreeport/LucillaQuietus.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 07:06:19
    Script Purpose : 
    Script Notes   :  New to add missing dialog for quest "Reward For A Missing Music Box".
--]]

local  RewardForAMissingMusicBox = 5261

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional1/weaponsmith_lucilla_quietus/fprt_south/100_questlucillaquietus_callout1_3d9a231a.mp3", "Either buy something or get out of the way!", "", 3790442270, 2463491720, Spawn, 0)

	if HasQuest(Spawn, RewardForAMissingMusicBox) then
	SetStepComplete(Spawn, RewardForAMissingMusicBox, 1)
	end
end

function respawn(NPC)
	spawn(NPC)
end