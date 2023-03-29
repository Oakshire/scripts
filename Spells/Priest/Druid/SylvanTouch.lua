--[[
    Script Name    : Spells/Priest/Druid/SylvanTouch.lua
    Script Author  : LordPazuzu
    Script Date    : 3/18/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
	Level = GetLevel(Caster)
    StatBonus = GetWis(Caster) / 5
    BaseHeal = Level * 9.5
    TotalHeal = math.floor(BaseHeal + StatBonus)
    SpellHeal("Heal", TotalHeal, TotalHeal)

end

function tick(Caster, Target)
	Level = GetLevel(Caster)
    StatBonus = GetWis(Caster) / 10
    BaseTick = Level * 2.5
    TotalTick = math.floor(BaseTick + StatBonus)
    SpellHeal("Heal", TotalTick, TotalTick)
end
