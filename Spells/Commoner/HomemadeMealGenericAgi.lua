

function cast(Caster, Target, Regen, Agi) -- Add more params as needed for the values from the db
	AddSpellBonus(Caster, 602, Regen)
	AddSpellBonus(Caster, 2, Agi)
end

function remove(Caster, Target)
	RemoveSpellBonus(Caster)
end