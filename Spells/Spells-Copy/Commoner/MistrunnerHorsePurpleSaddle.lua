--[[
    Script Name    : Spells/Commoner/MistrunnerHorsePurpleSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.04.26 08:04:59
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, Mit)
SetMount(Caster, 6829)
SetMountColor(Caster, 255, 255, 255, 75, 0, 130)
--Increases your ground speed by 130%
    AddSpellBonus(Caster, 611, Speed)
--Increases Mitigation of caster vs elemental, noxious and arcane damage by 200
AddSpellBonus(Caster, 201, Mit)
    AddSpellBonus(Caster, 202, Mit)
    AddSpellBonus(Caster, 203, Mit)
end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end
