--[[
    Script Name    : Spells/Commoner/GreenAncientChampionsFlyingSymbol.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.19 07:04:23
    Script Purpose : 
                   : 
-]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed)   
-- Summons a mount
SetMount(Caster, 9010)
SetMountColor(Caster, 255, 255, 255, 50, 205, 50)
--Increases your ground speed by 130%
AddSpellBonus(Caster, 611, Speed)

end

function remove(Caster, Target)
SetMount(Caster, 0)   
RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)

end