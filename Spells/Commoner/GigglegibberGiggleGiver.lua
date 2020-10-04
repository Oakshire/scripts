--[[
    Script Name    : Spells/Commoner/GigglegibberGiggleGiver.lua
    Script Author  : neatz09
    Script Date    : 2020.04.24 06:04:22
    Script Purpose : 
                   : 
--]]

-- Launches a goblin into oblivion.

function cast(Caster, Target)
local Zone = GetZone(Caster)
local X = GetX(Caster)
local Y = GetY(Caster)
local Z = GetZ(Caster)
local Heading = GetHeading(Caster)

SpawnMob(Zone, 5590951, false, X, Y, Z, Heading)
    if S ~= nil then
      Despawn(S, 200)
    end
end


function remove(Caster, Target)
local S = GetSpawn(Caster, 5590951)
 if S ~= nil then
     Despawn(S, 200)
    end
end