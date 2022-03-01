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
	if HasQuest(Spawn, RewardForAMissingMusicBox) then
	SetStepComplete(Spawn, RewardForAMissingMusicBox, 1)
	end
end

function respawn(NPC)
	spawn(NPC)
end