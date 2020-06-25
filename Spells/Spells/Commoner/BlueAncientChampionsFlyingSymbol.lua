--[[
    Script Name    : Spells/Commoner/BlueAncientChampionsFlyingSymbol.lua
    Script Author  : Skywalker646
    Script Date    : 2020.03.26 06:03:38
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed)   
-- Summons a mount
SetMount(Caster, 9010)
SetMountColor(Caster, 65, 105, 225, 65, 105, 225)
--Increases your ground speed by 35%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end