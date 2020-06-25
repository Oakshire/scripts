--[[
    Script Name    : Spells/Commoner/RedAncientChampionsFlyingSymbol.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.10 08:05:27
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt)
--Summons a mount to ride    
SetMount(Caster, 9010)
SetMountColor(Caster, 255, 255, 0, 255, 0, 0)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)


end


function remove(Caster, Target)
SetMount(Caster, 0)
    RemoveSpellBonus(Caster)
end
