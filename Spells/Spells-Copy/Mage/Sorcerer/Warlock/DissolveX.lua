--[[
        Script Name     : Spells/Mage/Sorcerer/Warlock/Dissolve.lua
        Script Author   : John Adams
        Script Date     : 2013.11.19
        Script Purpose  : 
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal)

        if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
                SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
        else
                SpellDamage(Target, DDType, MinDDVal)
        end

end
