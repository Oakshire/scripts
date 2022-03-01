--[[
    Script Name    : Spells/Commoner/BlueNightmareBlueSaddle.lua
    Script Author  : neatz09
    Script Date    : 2019.11.16 01:11:47
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
SetMount(Caster, 7183)
SetMountColor(Caster, 0, 0, 0, 0, 0, 255) 
--Increases your ground speed by 135%
    AddSpellBonus(Caster, 611, Speed)
--Increases Mitigation of caster vs elemental, noxious and arcane damage by 450    
AddSpellBonus(Caster, 201, Mit)
    AddSpellBonus(Caster, 202, Mit)
    AddSpellBonus(Caster, 203, Mit)
end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
SetMount(Caster, 0)
end
