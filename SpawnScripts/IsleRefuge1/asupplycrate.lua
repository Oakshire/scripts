--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplycrate.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 04:09:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
end

function death(NPC, Spawn)
PlaySound(NPC,"sounds/widgets/chests/chest_smash001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
SpawnSet(NPC,"model_type",3312)
GoblinRevenge(NPC,Spawn)
end

function aggro(NPC,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function GoblinRevenge(NPC,Spawn)
local zone = GetZone(NPC)
local Goblin = GetSpawnByLocationID(zone,133775328)
if GetSpawnLocationID(NPC) ==133774893 or GetSpawnLocationID(NPC) ==133774894 or GetSpawnLocationID(NPC) ==133774892 then
    SpawnByLocationID(zone,133775328)
if Goblin ~=nil then
    Attack(Goblin,Spawn)
    AddHate(Goblin,Spawn,70,1)
end
    end
end
