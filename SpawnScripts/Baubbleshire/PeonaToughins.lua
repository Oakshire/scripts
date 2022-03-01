--[[
	Script Name	: SpawnScripts/Baubbleshire/PeonaToughins.lua
	Script Purpose	: Peona Toughins <Tailor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Added dialog/HalfPint Quest - 2022.01.23 Dorbin
--]]

dofile("SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua")
local HalfPint = 5448

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericArmorsmithHail(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins001.mp3", "", "", 3593368605, 1432200573, Spawn)
	conversation = CreateConversation()
		if GetQuestStep(Spawn, HalfPint) ==7 then
	    AddConversationOption(conversation, "I'm here about Dibble.","Dibble")
	    end
	AddConversationOption(conversation, "Maybe some other time.")
	StartConversation(conversation, NPC, Spawn, "Dare I say, it's a fine day for shopping. How can I help you?")

end

function Dibble(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How long ago was that?","LongAgo")
	StartConversation(conversation, NPC, Spawn, "You know Dibble? That little sneak buggered off with my research papers! Haven't seen him since.")
end

function LongAgo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "", "", "sad", 0, 0, Spawn)
	AddConversationOption(conversation, "He asked me to give you all of this.","TurnIn")
	StartConversation(conversation, NPC, Spawn, "He's been gone for nearly ten days.  You know, I kind of miss him fawning over me.")
end

function TurnIn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "He asked me to give you all of this.","TurnIn")
	AddConversationOption(conversation, "Well, he's dead.","Dead")
	StartConversation(conversation, NPC, Spawn, "He's been gone for nearly ten days.  You know, I kind of miss him fawning over me.")
end

function TurnIn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	AddConversationOption(conversation, "The impetuous imp is languishing in Varsoon.","Imp")
		AddConversationOption(conversation, "Well, he's dead...","Dead")
	StartConversation(conversation, NPC, Spawn, "This is everything that was outlined in my research papers!  That impetuous imp! Anything to get on my good side ... How sweet.")
end

function Imp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.","QuestDone")
	StartConversation(conversation, NPC, Spawn, "We must organize a rescue party.  I'll speak with Marshal Surefoot at once.  Oh, thank you for letting me know what happened to Dibble.  It's not much, but please take this for all you've done. ")
end

function Dead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "cry", 0, 0, Spawn)
	AddConversationOption(conversation, "... I mispoke. He is not dead, yet.","NotDead")
	StartConversation(conversation, NPC, Spawn, "WHAT?! ... How could... He can't be dead!")
end

function NotDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	AddConversationOption(conversation, "The impetuous imp is languishing in Varsoon.","Imp")
	StartConversation(conversation, NPC, Spawn, "Rude! How dare you play with my emotions! ... Dibble. Where is he? Is he safe?")
end

function QuestDone(NPC, Spawn)
    	SetStepComplete(Spawn, HalfPint, 7)
    end
