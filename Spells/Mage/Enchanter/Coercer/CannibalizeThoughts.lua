--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/CannibalizeThoughts.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 05:10:15
    Script Purpose : 
                   : 
--]]

-- Increases power of group members (AE) by 11 instantly and every 6 seconds
-- Decreases INT of target by 44.3

function cast(Caster, Target, Int, GrpPwr)
    AddSpellBonus(Target, 4, Int)

local group = GetGroup(Caster)
if group == nil then
    SpellHeal("Power", GrpPwr, 0, Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Power", GrpPwr, 0, v)
    end
end
end


function tick(Caster, Target, Int, GrpPwr)
local group = GetGroup(Caster)
if group == nil then
    SpellHeal("Power", GrpPwr, 0, Caster)
else
    for k,v in ipairs(GetGroup(Spawn)) do
        SpellHeal("Power", GrpPwr, 0, v)
    end
end
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
