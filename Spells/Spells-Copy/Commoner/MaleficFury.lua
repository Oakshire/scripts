--[[
    Script Name    : Spells/Commoner/MaleficFury.lua
    Script Author  : neatz09
    Script Date    : 2020.05.29 07:05:32
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On a hostile spell cast this spell will cast Malefic Fury on target of spell.  
--     Inflicts 229 mental damage on target
--     Increases Threat to target by 1,660 
--     Cannot be modified except by direct means

function cast(Caster, Target)
AddProc(Caster, 5, 100)
end

function proc(Caster, Target, DmgType, Dmg, Hate)
SpellDamage(Target, DmgType, Dmg, nil, 2, 1)
AddHate(Caster, Target, Hate, 1)
end