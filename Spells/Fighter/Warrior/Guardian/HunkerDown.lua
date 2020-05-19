--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/HunkerDown.lua
    Script Author  : John Adams
    Script Date    : 2013.12.08 03:12:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MitAmt)

    -- Decreases Attack Speed of caster by 11.3
    AddSpellBonus(Caster, 617, -11.3)

    -- Increases Mitigation of caster vs physical damage by 133
    AddSpellBonus(Caster, 200, MitAmt)

    AddProc(Target, 1, 25)
end

function proc(Caster, Target, Type)
    -- On a melee hit this spell may cast Pin on target of attack.  Lasts for 10.0 seconds.  Triggers about 5.0 times per minute.
    --     Roots target
    AddSpellBonus(Target, 609, 0) -- set speed to 0, is rooting? :D

    --     5% chance to dispel when target takes damage
    --     5% chance to dispel when target receives hostile action
    --     Epic targets gain an immunity to Root and Will not multi-attack if the primary attack was avoided. effects of 30.0 seconds and duration is reduced to 3.3 seconds.

end

function remove(Caster, Target, MitAmt)
    RemoveSpellBonus(Caster)
    RemoveProc(Target)
end
