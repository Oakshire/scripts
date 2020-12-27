--[[
    Script Name    : Spells/Priest/Shaman/Mystic/EchoesoftheAncients.lua
    Script Author  : neatz09
    Script Date    : 2020.02.03 09:02:12
    Script Purpose : 
                   : 
--]]

-- Increases all damage done to target encounter by 1.35%
-- Interrupts target encounter
-- Decreases Mitigation of target encounter vs elemental and noxious damage by 234

function cast(Caster, Target, DmgBonus, Mit)
    Say(Caster, "Unsure if dmg bonus works or not")
    
AddSpellBonus(Caster, 704, DmgBonus)
    Interrupt(Caster, Target)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster, Target)
end


