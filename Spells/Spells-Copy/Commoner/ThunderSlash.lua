--[[
    Script Name    : Spells/Commoner/ThunderSlash.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 01:04:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Slashing, SlashMin, SlashMax, Magic, MagicMin, MagicMax, Divine, DivineMin, DivineMax)
    SpellDamage(Target, Slashing, (GetLevel(Caster) * 1.08) * SlashMin, (GetLevel(Caster) * 1.08) * SlashMax)
    SpellDamage(Target, Magic, (GetLevel(Caster) * 1.08) * MagicMin, (GetLevel(Caster) * 1.08) * MagicMax)
    SpellDamage(Target, Divine, (GetLevel(Caster) * 1.08) * DivineMin, (GetLevel(Caster) * 1.08) * DivineMax)
end