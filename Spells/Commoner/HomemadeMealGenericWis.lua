function cast(Caster, Target, Regen, Wis)
	AddSpellBonus(Target, 602, Regen)
	AddSpellBonus(Target, 3, Wis)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end