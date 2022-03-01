--[[
	Script Name	: DivineStrike.lua
	Script Purpose	: Templar Direct Damage spell with Undead bonus damage
	Script Author	: theFoof
	Script Date	: 2014.3.9
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    --[[ We don't have racetypes on npcs yet
    if GetRaceType(Target) == "Undead" then
        SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    end--]]
end