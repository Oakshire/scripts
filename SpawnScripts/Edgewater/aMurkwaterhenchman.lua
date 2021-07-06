--[[
    Script Name    : SpawnScripts/Edgewater/aMurkwaterhenchman.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.05 07:07:02
    Script Purpose : 
                   : 
--]]

local AvengeTheFreeportTrooper = 5291

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end


function death(NPC, Spawn)
if not HasQuest(Spawn,  AvengeTheFreeportTrooper) then
local chance = MakeRandomInt(1, 100)
if chance <= 10 then
AddLootItem(NPC, 3021)
end
else
RemoveLootItem(NPC, 3021)
end
   end


function respawn(NPC)
	spawn(NPC)
end