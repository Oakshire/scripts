--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/FlashofSteel.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, BonusAmt)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
