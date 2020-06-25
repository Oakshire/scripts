--[[
    Script Name    : Spells/Scout/Predator/Assassin/DeathBlow.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 11:10:37
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Target, Caster) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end
function cast(Caster, Target, DmgType, OverMin, OverMax, DmgTyp2, UnderMin, UnderMax)
-- Inflicts 685 - 1142 melee damage on target
--     If over 33% Health
-- Inflicts 2056 - 3426 melee damage on target
--     If under 33% Health
if GetHP(Target) > GetPCTOfHP(Target, 33) then 
SpellDamage(Target, DmgType, OverMin, OverMax)   
else
        SpellDamage(Target, DmgType, UnderMin, UnderMax)
    end

end
