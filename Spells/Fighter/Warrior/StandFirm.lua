--[[
    Script Name    : Spells/Fighter/Warrior/StandFirm.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.03 06:01:16
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Grants target a 12% chance of making an additional attempt to avoid being hit by a melee attack using the caster's avoidance.
*Increases Parry of caster by 2.4

--]]


function cast(Caster, Target, Chance, Parry)
        AddSkillBonus(Caster, GetSkillIDByName("Parry"), Parry)
        AddProc(Target, 4, Chance)

end

function proc(Caster, Target, Type)
        Say(Caster, "Avoidance buff not implemented.")

end

   
function remove(Caster, Target)
        RemoveSkillBonus(Caster)

end

