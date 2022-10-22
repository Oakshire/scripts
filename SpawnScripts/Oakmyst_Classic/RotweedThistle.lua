--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/RotweedThistle.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.21 01:10:13
    Script Purpose : Part of the Rotweed encounter in Oakmyst Forest
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
    aggrotimer(NPC)
end

function aggrotimer(NPC)
local   distance = GetRunbackDistance(NPC)
    if IsInCombat(NPC) and distance <=25 then
    AddTimer(NPC,8000,"aggrotimer") -- Check is Thistles and Cube are up
    else
    Despawn(NPC) --Despawns Thistles and Cube, which disables update
    zone = GetZone(NPC)
    local Cube = GetSpawnByLocationID(zone,133779141)
    Despawn(Cube)
    end
end

function respawn(NPC)
	spawn(NPC)
end