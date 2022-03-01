--[[
    Script Name    : Spells/Priest/Druid/Warden/Frostbite.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 05:10:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
-- Inflicts 193 - 236 cold damage on target instantly and every 4 seconds
SpellDamage(Target, DmgType, MinVal, MaxVal)
    -- Decreases Mitigation of target vs elemental damage by 1048
AddSpellBonus(Target, 201, BonusAmt)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
-- Inflicts 193 - 236 cold damage on target instantly and every 4 seconds
SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

