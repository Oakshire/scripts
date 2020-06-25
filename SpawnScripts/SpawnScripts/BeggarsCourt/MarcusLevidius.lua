--[[
	Script Name	: SpawnScripts/BeggarsCourt/MarcusLevidius.lua
	Script Purpose	: Marcus Levidius 
	Script Author	: John Adams
	Script Date	: 2009.04.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "", "Yes, yes, hello. I'm busy.", "hello", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Grim determination has gotten us to where we are now.", "agree", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "One day, we shall reign supreme over the lessers.", "brandish", 1689589577, 4560189, Spawn)
	end
end