--[[
    Script Name    : SpawnScripts/ThievesWay/Zatzy.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.28 09:06:20
    Script Purpose : 
                   : 
--]]

local DarkBladesAndDirtyRats = 5264

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "", Spawn)
	ProvidesQuest(NPC, DarkBladesAndDirtyRats)
end

function InRange(NPC, Spawn)
 PlayFlavor(NPC, "", "Go!  Get away from me!  I'm in hiding!", "", 1689589577, 4560189, Spawn)   
end    




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, DarkBladesAndDirtyRats) and not HasCompletedQuest(Spawn, DarkBladesAndDirtyRats) then 
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "What are you hiding from?", "Option1")
	AddConversationOption(conversation, "I'll leave you alone. ")
	StartConversation(conversation, NPC, Spawn, "I told you to leave!  I don't want to draw attention to myself!  Go, go away!")
	PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy002.mp3", "", "", 2308759245, 2308759245, Spawn)
	elseif GetQuestStep(Spawn, DarkBladesAndDirtyRats) == 1 then
	QuestProgress(NPC, Spawn)
	elseif GetQuestStep(Spawn, DarkBladesAndDirtyRats) == 2 then
	local conversation = CreateConversation()
	SetStepComplete(Spawn, DarkBladesAndDirtyRats, 2)
	PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy004.mp3", "", "", 1223149553, 2435152199, Spawn)
	AddConversationOption(conversation, "Yeah, they're all dead.", "Option3")
	StartConversation(conversation, NPC, Spawn, "You're back!  Did you kill them all?  Are they all dead?  Did you find the trinket?")
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy005.mp3", "", "", 2330580280, 3278449778, Spawn)
	AddConversationOption(conversation, "Who did this?", "Option2")
	AddConversationOption(conversation, "I don't want to hear this. ")
	StartConversation(conversation, NPC, Spawn, "I told you to leave me alone! If they finds me, they'll kill me!  They've already killed everyone else. I'm the only one left.  They killed them, and there was nothing I could do.  What was I supposed to do?  I'm just a small ratonga, little, so little.  ")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy006.mp3", "", "", 4200140623, 917956186, Spawn)
	AddConversationOption(conversation, "I'll take care of the Darkblades.", "offer")
	AddConversationOption(conversation, "This is where I leave. ")
	StartConversation(conversation, NPC, Spawn, "The Darkblades did it! They're all killers!  You find them in the sewers; it's a fitting place for filth.  You do me favor and kill them, kill them all, and I'll tell you where their secret den is.  You can find much wealth there. ")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What?", "turn_attack")
	StartConversation(conversation, NPC, Spawn, "This is very good news for little me, but very bad news for you.  That's no trinket, you fool!  It's the key to the Darkblades' den, and now they're all dead! I can plunder to my little black heart's content.")
	PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy008.mp3", "", "", 754496589, 2919744955, Spawn)
end

function turn_attack(NPC, Spawn)
SpawnSet(NPC, "attackable", 1)
SpawnSet(NPC, "show_level", 1)
Attack(NPC, Spawn)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DarkBladesAndDirtyRats)
end

function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/zatzy/fprt_sewer01/quests/zatzy/zatzy003.mp3", "", "", 3408941735, 1760879067, Spawn)
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "What! You lie to me?  That is so very mean.  Don't treat me that way. ")
end

 

function respawn(NPC)
	spawn(NPC)
end