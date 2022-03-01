--[[
    Script Name    : SpawnScripts/Ruins/RingleaderRadko.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 07:06:38
    Script Purpose : 
                   : 
--]]

local RewardForAMissingMusicBox = 5261

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if not HasCompletedQuest(Spawn, RewardForAMissingMusicBox) then
AddLootItem(NPC, 1286, 1)
end
   end