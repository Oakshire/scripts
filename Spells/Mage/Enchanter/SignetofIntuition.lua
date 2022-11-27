--[[
    Script Name    : Spells/Mage/Enchanter/SignetofIntuition.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 06:11:54
    Script Purpose : 
                   : 
--]]



  
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 3, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)

end


function remove(Caster, Target)    
    RemoveSpellBonus(Target)

end




