--[[
    Script Name    : SpawnScripts/Edgewater/adrudgemucus.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.04 08:07:14
    Script Purpose : 
                   : 
--]]

local SavingTheSewagePumps = 5284
local AnAcidicGland = 3489

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if not HasQuest(Spawn, SavingTheSewagePumps) then
 local chance = MakeRandomInt(1, 100)
 if chance <= 10 then
AddLootItem(Spawn, AnAcidicGland)
elseif HasQuest(Spawn, SavingTheSewagePumps) then 
RemoveLootItem(Spawn, AnAcidicGland)
end
end
   end