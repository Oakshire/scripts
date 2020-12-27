--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Mend.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, CureLvls)
SpellHeal("Heal", MinVal, MaxVal, 0, 2, 1)
    --     This effect cannot be critically applied.
    -- The healing of this spell cannot be modified except by direct means
    

    -- Dispels 7 levels of noxious hostile effects on target
    CureByType(CureLvls, 3);
end