--[[
	Script Name	: SpawnScripts/GreaterFaydark/Breezebloom.lua
	Script Purpose	: Breezebloom <Merchant>
	Script Author	: John Adams
	Script Date	: 2009.02.05
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/merchant_breezebloom/_exp03/exp03_rgn_greater_faydark/quest/nursery_merchant_breezebloom_hello_17d90830.mp3", "My job is to meet the equipment needs of the newly awakened fae.", "hello", 3333178819, 1069024420, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/merchant_breezebloom/_exp03/exp03_rgn_greater_faydark/quest/nursery_merchant_breezebloom_hello_5fd9bd08.mp3", "The concept of money is still pretty new to us, but I think we've adapted well.", "converse_female01", 2155291729, 1651860929, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/merchant_breezebloom/_exp03/exp03_rgn_greater_faydark/quest/nursery_merchant_breezebloom_hello_f290d965.mp3", "One fae's trash is another fae's treasure, that's what I always say!", "smile", 2307932947, 1948449842, Spawn)
	else
	end

end

