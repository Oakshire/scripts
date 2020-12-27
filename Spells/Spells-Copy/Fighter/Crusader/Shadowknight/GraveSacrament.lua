--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/GraveSacrament.lua
    Script Author  : neatz09
    Script Date    : 2019.10.09 04:10:47
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases threat priority of targets in Area of Effect by 2 positions---NOT SCRIPTED
-- Increases Threat to targets in Area of Effect by 284 - 347  instantly and every 4 seconds thereafter
-- Inflicts 5 - 8 disease damage on targets in Area of Effect
-- Inflicts 3 - 4 disease damage on targets in Area of Effect every 4 seconds

function cast(Caster, Target, HateMin, HateMax, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax, ToTMin, ToTMax)
        if HateMax ~= nil and HateMin < HateMax then
        AddHate(Caster, Target, math.random(HateMin, HateMax), 1)
    else
        AddHate(Caster, Target, HateMin, 1)
    end
SpellDamage(Target, HateMin, HateMax, DmgType, MinVal, MaxVal)
end
function tick(Caster, Target, HateMin, HateMax, DoTType, DotMin, DotMax)
        if ToTMax ~= nil and ToTMin < ToTMax then
        AddHate(Caster, Target, math.random(ToTMin, ToTMax), 1)
    else
        AddHate(Caster, Target, ToTMin, 1)
    end        
SpellDamage(Target, DoTType, DotMin, DotMax)
 end
