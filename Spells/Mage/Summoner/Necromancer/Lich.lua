--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Lich.lua
    Script Author  : neatz09
    Script Date    : 2020.09.26 05:09:34
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Shapechanges caster into a lich
-- Increases power of caster by 3.6% instantly and every 6 seconds
--     This effect cannot be critically applied.
-- On a hostile spell cast this spell will cast Lich's Siphoning on target of spell.  
--     Inflicts 72 disease damage on target
--     Heals caster for 48

function cast(Caster, Target, Pwr, DmgType, Dmg, HealAmt, Illu)
SetIllusion(Target, Illu)
AddProc(Target, 5, 100)
end

function tick(Caster, Target, Pwr, DmgType, Dmg, HealAmt, Illu)

end

function proc(Caster, Target, Type, Pwr, DmgType, Dmg, HealAmt, Illu)

end

function remove(Caster, Target)
ResetIllusion(Target)
RemoveProc(Target)
end