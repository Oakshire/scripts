--[[
    Script Name    : Spells/Priest/Druid/Vigor.lua
    Script Author  : LordPazuzu
    Script Date    : 3/20/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Power)
    Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    PowerBonus = LvlBonus + StatBonus
    TotalPower = Power + math.floor(PowerBonus)

    AddSpellBonus(Target, 501, TotalPower)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

