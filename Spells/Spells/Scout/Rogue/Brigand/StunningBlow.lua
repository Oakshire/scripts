--[[
    Script Name    : Spells/Scout/Rogue/Brigand/StunningBlow.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 09:10:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Inflicts 116 - 194 melee damage on target
-- Stuns target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.
  -- Stuns target
    --     If Target is not Epic
    -- Resistibility increases against targets higher than level 29.
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end
end

 
function remove(Caster, Target)
   RemoveControlEffect(Target, 4)
end




  
