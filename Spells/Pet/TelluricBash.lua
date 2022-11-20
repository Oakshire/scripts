--[[
    Script Name    : Spells/Pet/TelluricBash.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.19 06:11:15
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
        CastSpell(Target, 5001, GetSpellTier())
end
