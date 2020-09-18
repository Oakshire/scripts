--[[
    Script Name    : Spells/Priest/Druid/Warden/WardoftheUntamed.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 01:11:08
    Script Purpose : 
                   : 
--]]

-- Wards group members (AE) against 13 points of elemental damage
-- Increases Mitigation of group members (AE) vs elemental damage by 901

function cast(Caster, Target, Mit)   
AddSpellBonus(Target, 201, Mit)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end