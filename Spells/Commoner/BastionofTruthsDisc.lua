--[[
    Script Name    : Spells/Commoner/BastionofTruthsDisc.lua
    Script Author  : neatz09
    Script Date    : 2019.11.19 07:11:16
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, HP, MP, Speed, Crit, Cast)
-- Summons a mount to ride
SetMount(Caster, 10985)
 AddControlEffect(Caster, 13)
-- Increases Max Health of caster by 200.
    AddSpellBonus(Caster, 606, HP)
-- Increases Max Power by 200.0
    AddSpellBonus(Caster, 619, MP)
-- increases your ground speed by 130% 
    AddSpellBonus(Caster, 611, Speed)
-- Increases Crit Chance by 2.0%
    AddSpellBonus(Caster, 654, Crit)
-- Increases Ability Casting Speed by 2.0%
    AddSpellBonus(Caster, 664, Cast)
end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    RemoveSkillBonus(Caster)
SetMount(Caster, 0)
  RemoveControlEffect(Caster, 13)
end



