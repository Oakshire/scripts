--[[
    Script Name    : Spells/Mage/MagisShieldingClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.16 05:12:39
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, BaseMitBonus)
    level = GetLevel(Caster)
    local hp = level * 2.5
    local pw = level * 2.75
    local HpMod = math.floor(hp)
    local PwMod = math.floor(pw)
    local MitBonus = level * 5
    local MitMod = BaseMitBonus + MitBonus
    
    
    AddSpellBonus(Target, 500, HpMod)
    AddSpellBonus(Target, 501, PwMod)
    AddSpellBonus(Target, 200, MitMod)



end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    


end

