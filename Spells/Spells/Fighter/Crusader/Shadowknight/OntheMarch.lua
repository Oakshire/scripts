--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/OntheMarch.lua
    Script Author  : neatz09
    Script Date    : 2020.02.22 12:02:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Int, CastSpeed, Multi)
    AddSpellBonus(Target, 4, Int)
    AddSpellBonus(Target, 664, CastSpeed)
    AddSpellBonus(Target, 641, Multi)
AddImmunitySpell(2, Target)
AddImmunitySpell(3, Target)
AddImmunitySpell(4, Target)
AddImmunitySpell(5, Target)
AddImmunitySpell(6, Target)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveImmunitySpell(2,Target)
RemoveImmunitySpell(3,Target)
RemoveImmunitySpell(4,Target)
RemoveImmunitySpell(5,Target)
RemoveImmunitySpell(6,Target)
end

-- Info from spell_display_effects (remove from script when done)
-- Applies On the March.  Lasts for 10.0 seconds.
--     Increases INT of group members (AE) by 102.1
--     Increases Ability Casting Speed of group members (AE) by 35.3%
--     Increases Multi Attack of group members (AE) by 35.3
--     Makes group members (AE) immune to Root, Stifle, Stun, Fear and Daze effects
