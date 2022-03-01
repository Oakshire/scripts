--[[
    Script Name    : SpawnScripts/Commonlands/ATorturedMaid.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.01 09:06:00
    Script Purpose : 
                   : 
--]]

local LionManeHelm =  5249

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if HasCompletedQuest(Spawn, LionManeHelm) then
RemoveLootItem(NPC, 3826)
end
   end