--[[
    Script Name    : Spells/Mage/Summoner/EssenceShift.lua
    Script Author  : LordPazuzu
    Script Date    : 2-19-2023
    Script Purpose : 
                   : 
--]]

-- Inflicts 111 magic damage on target
-- Increases power of caster by 29

function cast(Caster, Target, DmgType, MinVal, Pwr)
    Pet=GetPet(Caster)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    PwBonus = LvlBonus + StatBonus
    MaxPw = Pwr + math.floor(PwBonus)
    
    if GetHP(Pet) > MinVal then
    ModifyHP(Pet, MinVal)
	SpellHeal("Power", MaxPw, MaxPw, Caster)
	else
	    end
end