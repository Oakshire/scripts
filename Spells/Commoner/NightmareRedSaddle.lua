--[[
    Script Name    : Spells/Commoner/NightmareRedSaddle.lua
    Script Author  : Skywalker646
    Script Date    : 2020.01.09 07:01:19
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
SetMount(Caster, 6831)
SetMountColor(Caster, 0, 0, 0, 220, 20, 60) 
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