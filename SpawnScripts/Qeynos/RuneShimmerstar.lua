--[[
	Script Name	: SpawnScripts/SouthQeynos/RuneShimmerstar.lua
	Script Purpose	: Rune Shimmerstar 
	Script Author	: Dorbin
	Script Date	: 5.2.2022
	Script Notes	: 
--]]
local BookDelivery = 5514

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
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/rune_shimmerstar/qey_south/runeshimmerstar000.mp3", "", "", 3137838652, 2088519153, Spawn)
		if GetQuestStep(Spawn,BookDelivery)==1 then
		AddConversationOption(conversation, "I'm delivering a book from Pelle Shinkicker.", "Deliver")
        end
    AddConversationOption(conversation, "I'm just admiring the architecture. ", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "What brings you to the Three Towers? Study of the arcane arts broadens your understanding of the world we live in. You would do well to remember this.")
end

function Deliver(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rune_shimmerstar/qey_south/runeshimmerstar001.mp3", "", "ponder", 2720305127, 2241418775, Spawn)
    AddConversationOption(conversation, "Do I have a choice?", "Deliver2")
	StartConversation(conversation, NPC, Spawn, "Oh, well its about time he sent it.  I've been waiting forever!  Its a chronical of his ill spent youth, though I mean his adventures.  And long overdue for a binding spell to preserve the pages!  Will you wait just a moment?")
end

function Deliver2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rune_shimmerstar/qey_south/runeshimmerstar002.mp3", "", "cast_priest_buff_02", 3768797080, 679576921, Spawn)
    AddConversationOption(conversation, "Were you part of Pelle's adventures?","UpdateDelivery")
    AddConversationOption(conversation, "What? Fine. I'll deliver this copy too.","UpdateDeliveryFinal")
	StartConversation(conversation, NPC, Spawn, "Choice implies that the universe's deterministic forces are balanced in harmony with volitional conciousness.  But that means nothing to you, of course!  I will finish the enchantment on this book and conjure it's magical duplicate.  There!  Now, before you return the book to Pelle, I need you to take this copy to Aundor Singingsword.  You will find him near the waterfall in the Oakmyst Forest.")
end


function UpdateDelivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rune_shimmerstar/qey_south/runeshimmerstar003.mp3", "", "", 1815098310, 4154335364, Spawn)
    AddConversationOption(conversation, "Thanks.  I'll take this book to him.","UpdateDeliveryFinal")
	StartConversation(conversation, NPC, Spawn, "Oh so you've heard of us!  I'm more than a tower-bound scholar you know.  Aundor Singingsword was fierce with a blade, and we were the best of friends.  Steer clear of his blade!")
end

function UpdateDeliveryFinal(NPC, Spawn)
SetStepComplete(Spawn,BookDelivery,1)
end