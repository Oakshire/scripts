--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Dragonfire.lua
    Script Author  : neatz09 (edited by vo1d)
    Script Date    : 2019.10.10 09:10:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, AbilityCastSpeed)
    if Target ~= Caster then
        SpellDamage(Target, DoTType, MinVal, MaxVal)
        
        -- Decreases Ability Casting Speed of targets in Area of Effect by 27.0%
        AddSpellBonus(Target, 664, AbilityCastSpeed)
    end
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end