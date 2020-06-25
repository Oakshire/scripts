--[[
    Script Name    : Spells/Priest/Druid/Warden/RegeneratingSpores.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 12:11:19
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- When damaged this spell has a 8% chance to cast Spores on target.  Lasts for 10.0 seconds.  
--     Heals target for 31 - 38 instantly and every 2 seconds
--     If over 50% Health
--     Heals target for 62 - 75 instantly and every 2 seconds
--     If under 50% Health

function cast(Caster, Target, OverMin, OverMax, UnderMin, UnderMax)
if GetHP(Target) > GetPCTOfHP(Target, 33) then 
SpellHeal("Heal", OverMin, OverMax)   
else
        SpellHeal("Heal", UnderMin, UnderMax)
    end

end


function tick(Caster, Target, OverMin, OverMax, UnderMin, UnderMax)
if GetHP(Target) > GetPCTOfHP(Target, 33) then 
SpellHeal("Heal", OverMin, OverMax)   
else
        SpellHeal("Heal", UnderMin, UnderMax)
    end

end
