--[[
	Script Name	: SpawnScripts/GreaterFaydark/Glitterpuff.lua
	Script Purpose	: Glitterpuff <Banker>
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
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/banker_glitterpuff/_exp03/exp03_rgn_greater_faydark/quest/nursery_banker_glitterpuff_hello_76bdb072.mp3", "Don't worry, we'll take good care of your coin and possessions.", "hello", 1591110716, 2078108189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/banker_glitterpuff/_exp03/exp03_rgn_greater_faydark/quest/nursery_banker_glitterpuff_hello_9897825c.mp3", "Welcome to the Spirit Bloom Nursery branch of the Kelethin First Regional Bank!", "hello", 52408031, 2927648896, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/banker_glitterpuff/_exp03/exp03_rgn_greater_faydark/quest/nursery_banker_glitterpuff_hello_8793aa70.mp3", "Don't carry around all that extra weight!  Let us hold it for you!", "beckon", 3186681674, 2020413023, Spawn)
	else
	end

end

