--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Pummel.lua
    Script Author  : John Adams
    Script Date    : 2013.11.17 07:11:55
    Script Purpose : Direct Damage script
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg)

        if MaxDmg ~= nil and MinDmg < MaxDmg then
                dmgAmount = math.random(MinDmg, MaxDmg)
                SpellDamage(Target, DDType, dmgAmount)
        else
                SpellDamage(Target, DDType, MinDmg)
        end

end

function remove(Caster, Target, DDType, MinDmg, MaxDmg)

end
