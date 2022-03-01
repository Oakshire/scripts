--[[
	Script Name	: SpawnScripts/FrostfangSea/asnowpack.lua
	Script Purpose	: for the spawns "a snowpack" and "an iceflow" 
	Script Author	: theFoof
	Script Date	: 2013.05.20
	Script Notes	: 
--]]

require"SpawnScripts/Generic/MovementCircleSmall"

local EssentialIngredient = 22

function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Caster, SpellName)
    if SpellName == "Bogchild's Iced Trap" then
	    if GetName(NPC) == "a snowpack" then
		    if QuestStepIsComplete(Caster, EssentialIngredient, 2) == false then 
			    AddStepProgress(Caster, EssentialIngredient, 2, 1)
			    Despawn(NPC)
			end
		elseif GetName(NPC) == 'an iceflow' then
		    if QuestStepIsComplete(Caster, EssentialIngredient, 1) == false then
		        AddStepProgress(Caster, EssentialIngredient, 1, 1)
			    Despawn(NPC)
			end
		end
	end
end