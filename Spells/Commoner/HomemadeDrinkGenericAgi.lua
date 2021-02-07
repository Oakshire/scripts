function cast(Caster, Target, Regen, Agi)
	AddSpellBonus(Target, 603, Regen)
	AddSpellBonus(Target, 2, Agi)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end