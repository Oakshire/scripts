function cast(Caster, Target, Regen, HP)
	AddSpellBonus(Target, 603, Regen)
	AddSpellBonus(Target, 606, HP)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end