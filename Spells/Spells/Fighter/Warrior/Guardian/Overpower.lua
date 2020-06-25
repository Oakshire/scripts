--[[
        Script Name     : Spells/Fighter/Warrior/Guardian/Overpower.lua
        Script Author   : John Adams
        Script Date     : 2013.11.17 18:00:00
        Script Purpose  : Direct Damage script
                        :
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

        if MaxDmg ~= nil and MinDmg < MaxDmg then
                SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
        else
                SpellDamage(Target, DDType, MinDmg)
        end

end

