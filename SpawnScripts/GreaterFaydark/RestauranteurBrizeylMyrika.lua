--[[
	Script Name	: SpawnScripts/GreaterFaydark/RestauranteurBrizeylMyrika.lua
	Script Purpose	: Restauranteur Brizeyl Myrika <Provisioner>
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/restauranteur_brizeyl_myrika/_exp03/exp03_cty_kelethin/merchants/baker_brizeyl_hail_36d424e1.mp3", "What can I get for you?", "", 881288795, 1873888107, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/restauranteur_brizeyl_myrika/_exp03/exp03_cty_kelethin/merchants/baker_brizeyl_hail_47373be1.mp3", "Welcome to Joleena's Restaurant!", "", 2536223001, 3270976923, Spawn)
	else
	end

end

