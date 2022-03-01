--[[
	Script Name	: SpawnScripts/FrostfangSea/DeadWreganFirebeard.lua
	Script Purpose	: Wregan Firebeard(dead)
	Script Author	: theFoof
	Script Date	: 2013.05.19
	Script Notes	: 
--]]

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "the body" then
		SendMessage(Caster, "Wregan's body shows signs of the mortal grizzly mauling he sustained.")
	end
end
