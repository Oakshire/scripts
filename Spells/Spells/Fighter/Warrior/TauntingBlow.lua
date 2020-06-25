--[[
    Script Name    : Spells/Fighter/Warrior/TauntingBlow.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, MinTauntVal, MaxTauntVal)
-- Inflicts 7 - 11 melee damage on target
SpellDamage(Target, DmgType, DmgLow, DmgHigh)
-- Increases Threat to target by 435 - 531 
    
if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
      hateAmount = math.random(MinTauntVal, MaxTauntVal)
      AddHate(Caster, Target, hateAmount)
    else
      AddHate(Caster, Target, MinTauntVal)
    end
end

