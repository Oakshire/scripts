--[[
	Script Name	:   SpawnScripts/VerminSnye/BrawlerBently.lua
	Script Purpose	:   Brawler Bently Dialog
	Script Author	:   premierio015
	Script Date 	:   03.05.2020
	Script Notes	:	
--]]

local CalcifiedBoneOfTheTortured = 527

function spawn(NPC)
        ProvidesQuest(NPC, QUEST)
	SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, CalcifiedBoneOfTheTortured) then
	PlayFlavor(NPC, "voiceover/english/brawler_bently/qey_catacomb02/quest_character/brawler_bently_aoicallout01_171ba5cc.mp3", "Hey!  I heard you destroyed Lika the Tortured!", "", 2007283087, 1004410230, Spawn)
end
	end

function LeaveRange(NPC, Spawn)

end

function hailed(NPC, Spawn)
FaceTarget(NPC, Spawn)
if HasQuest(Spawn, CalcifiedBoneOfTheTortured) and GetQuestStep(Spawn, CalcifiedBoneOfTheTortured) == 1  then
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/brawler_bently/qey_catacomb02/brawlerbently002.mp3", "", "", 2544659380, 3123934221, Spawn)
 AddConversationOption(conversation, "I have her arm bone.", "ArmBone")
 AddConversationOption(conversation, "Nothing of value.")
 StartConversation(conversation, NPC, Spawn, "Lika the Tortured has sent many starry eyed young adventurers to ther early doom. Good to hear you put her to rest once and for all! So what did you loot from her remains?")
 else

 Advice(NPC, Spawn)
end
   end

function ArmBone(NPC, Spawn)
SetStepComplete(Spawn, CalcifiedBoneOfTheTortured, 1)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/brawler_bently/qey_catacomb02/brawlerbently003.mp3", "", "", 2024118320, 3061111092, Spawn)
AddConversationOption(conversation, "Thank you for the suggestion.", "Multistep")
StartConversation(conversation, NPC, Spawn, "This bone is very strong.  Urgh!  It won't even flex or crack when I try to bend it!  This would make a great weapon! Take it to Dylan Ironforge in North Qeynos.  He'll craft something out of it.  Besides, he owes me a favor. HAHA!")
end	

function Advice(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/brawler_bently/qey_catacomb02/brawlerbently001.mp3", "", "", 615717805, 349513668, Spawn)
	AddConversationOption(conversation, "Thanks for the advice.")
	StartConversation(conversation, NPC, Spawn, "Be careful down in the catacombs.  Nasty creatures who'd be happy to take their frustrations out on you live in bowels below, the least of which is Lika the Tortured!")
end