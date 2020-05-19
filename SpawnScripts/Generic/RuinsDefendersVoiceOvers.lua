--[[
	Script Name	: SpawnScripts/Generic/RuinsDefendersVoiceOvers.lua
	Script Purpose	: Voice overs for the courageous and seasoned defenders of the Ruins.
	Script Author	: Scatman
	Script Date	: 2009.08.29
	Script Notes	: 
--]]

function generic_hail(NPC, Spawn)
	local choice = math.random(1, 8)
	if choice == 1 then
		Say(NPC, "These filthy beasts are an affront to the Overlord!", Spawn)
	elseif choice == 2 then
		Say(NPC, "These cursed orcs can't be allowed to taint the majesty of Freeport!", Spawn)
	elseif choice == 3 then
		Say(NPC, "These orcs seem better armed than they were before.", Spawn)
	elseif choice == 4 then
		Say(NPC, "The Overlord's wishes must be executed.", Spawn)
	elseif choice == 5 then
		Say(NPC, "Now is the time to take back Shoreside from the Lonetusks!", Spawn)
	elseif choice == 6 then
		Say(NPC, "Now isn't the time for chatter. There are orcs to slay!", Spawn)
	elseif choice == 7 then
		Say(NPC, "We must determine what's behind this orc uprising!", Spawn)
	elseif choice == 8 then
		Say(NPC, "I have orders to fight, not to chit-chat.", Spawn)
	end
end
