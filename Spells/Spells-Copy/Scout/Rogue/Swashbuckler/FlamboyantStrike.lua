--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/FlamboyantStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 01:09:37
    Script Purpose : 
                   : 
--]]

-- Inflicts 267 - 446 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

-- Decreases INT of target by 142.6
    AddSpellBonus(Target, 4, BonusAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end




