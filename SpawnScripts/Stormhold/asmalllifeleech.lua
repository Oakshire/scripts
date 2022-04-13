--[[
    Script Name    : SpawnScripts/Stormhold/asmalllifeleech.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.10 02:04:59
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


function hailed(NPC, Spawn)

end


function spawn(NPC)
local Level = GetLevel(NPC)
if Level == 14 then
SpawnSet(NPC, "hp", 2427)
SpawnSet(NPC, "power", 1298)
elseif Level == 15 then
SpawnSet(NPC, "hp", 2800)
SpawnSet(NPC, "power", 1400)
end
   end