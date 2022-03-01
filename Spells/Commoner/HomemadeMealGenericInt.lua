function cast(Caster, Target, Regen, Int)
	AddSpellBonus(Target, 602, Regen)
	AddSpellBonus(Target, 4, Int)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end