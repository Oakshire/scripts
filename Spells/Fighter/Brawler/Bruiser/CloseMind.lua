--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/CloseMind.lua
    Script Author  : neatz09
    Script Date    : 2020.03.01 03:03:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Makes caster immune to Root effects
AddImmunitySpell(5, Target) 
-- Makes caster immune to Stun effects
AddImmunitySpell(4, Target)
-- Makes caster immune to Stifle effects
AddImmunitySpell(2, Target)
-- Makes caster immune to Fear effects
AddImmunitySpell(6, Target)
-- Makes caster immune to Daze effects
AddImmunitySpell(3, Target)
-- Makes caster immune to Mesmerize effects
AddImmunitySpell(1, Target)
end

function remove(Caster, Target)
RemoveImmunitySpell(1, Target)
RemoveImmunitySpell(2, Target)
RemoveImmunitySpell(3, Target)
RemoveImmunitySpell(4, Target)
RemoveImmunitySpell(5, Target)
RemoveImmunitySpell(6, Target)
end
