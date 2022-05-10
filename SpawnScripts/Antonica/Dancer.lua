--[[
	Script Name	: SpawnScripts/Antonica/Dancer.lua
	Script Purpose	: Dancer 
	Script Author	: premierio015
	Script Date	: 09.05.2022
	Script Notes	: 
--]]

local AFrontiersladysTask = 5528
local BattleWithTheTimberclaws = 5530


function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, AFrontiersladysTask) and not HasCompletedQuest(Spawn, AFrontiersladysTask) then
ProvidesQuest(NPC, AFrontiersladysTask)
elseif HasCompletedQuest(Spawn, AFrontiersladysTask) then
ProvidesQuest(NPC, BattleWithTheTimberclaws)
 SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
    end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona000.mp3", "", "", 2049178803, 173582214, Spawn)
	if not HasQuest(Spawn, AFrontiersladysTask) and not HasCompletedQuest(Spawn, AFrontiersladysTask) then
	AddConversationOption(conversation, "I am a bit of an adventurer and a bit of an explorer.", "Option1")
	elseif GetQuestStep(Spawn, AFrontiersladysTask) == 2 then
	AddConversationOption(conversation, "Sighard gave me this special arrow.", "Option2")
	elseif GetQuestStep(Spawn, AFrontiersladysTask) == 4 or HasCompletedQuest(Spawn, AFrontiersladysTask) and not HasQuest(Spawn, BattleWithTheTimberclaws) and not HasCompletedQuest(Spawn, BattleWithTheTimberclaws) then
	AddConversationOption(conversation, "The arrow is in the training dummy.", "Option4")
	elseif HasQuest(Spawn, BattleWithTheTimberclaws) then
	AddConversationOption(conversation, "You so quickly forget the world's greatest adventurer.", "Option6")
	elseif GetQuestStep(Spawn, BattleWithTheTimberclaws) == 2 then
	AddConversationOption(conversation, "I tried my best, but their numbers are strong.", "Option7")
	end
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
end



function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/verona/antonica/verona001.mp3", "", "", 3474200771, 3431607508, Spawn)
	AddConversationOption(conversation, "I am always available to assist a frontiersman.", "offer")
		AddConversationOption(conversation, "I cannot assist. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Adventurer ... explorer ... how would you like to be a courier too?")
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, AFrontiersladysTask, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona003.mp3", "", "", 1306460538, 3525298419, Spawn)
		AddConversationOption(conversation, "What is this arrow?", "Option3")
		AddConversationOption(conversation, "I shall do as requested.")
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona004.mp3", "", "", 2295000938, 2111794040, Spawn)
		AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "The arrow is a special marker for some friends of mine.")
end


function Option4(NPC, Spawn)
    if GetQuestStep(Spawn, AFrontiersladysTask) == 4 then
    SetStepComplete(Spawn, AFrontiersladysTask, 4)
    end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona005.mp3", "", "", 3454016717, 1472655172, Spawn)
		AddConversationOption(conversation, "I did not see any Trusaris.", "Option5")
		AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, NPC, Spawn, "Thank you, courier. I trust you have done as I requested. If not, Trusaris will tell me. He sees all in Archer Woods, including your every step.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona006.mp3", "", "", 4166511705, 1130362343, Spawn)
		AddConversationOption(conversation, "I will help clear his home.", "offer2")
	StartConversation(conversation, NPC, Spawn, "Trusaris is the great oak of Archer Woods. He has lived in these hills for many ages. He has seen much grief in his lifetime. Now gnolls are taking over what is left of his home.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona008.mp3", "", "", 3282299207, 1917374337, Spawn)
		AddConversationOption(conversation, "They will know me when I rid the woods of them!")
	StartConversation(conversation, NPC, Spawn, "Forget the world's greatest? I think not, but your name may have slipped my mind. Ha! Fear not, my brave courier. The gnolls of Archer Woods are the only ones near here that have yet to know your name.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona010.mp3", "", "", 3182250399, 3459878429, Spawn)
		AddConversationOption(conversation, "Thank you, Dancer.", "Option8")
	StartConversation(conversation, NPC, Spawn, "Your best is all that we ask. I shall reward you for servicing what remains of Archer Woods. I shall mention your name among my friends.")
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn, BattleWithTheTimberclaws, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona011.mp3", "", "", 2906971481, 4178549824, Spawn)
		AddConversationOption(conversation, "Is your name really Dancer?", "Option9")
		AddConversationOption(conversation, "Thank you, Dancer.")
	StartConversation(conversation, NPC, Spawn, "By the way, courier, Sighard asked me about you. He wishes to speak with you.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/verona/antonica/verona007.mp3", "", "", 1777708143, 1227602978, Spawn)
		AddConversationOption(conversation, "Farewell, Dancer.")
	StartConversation(conversation, NPC, Spawn, "There was a dark time in my life when dancing was not a thing of joy, but a subjugated torment. It is a time I choose not to recall. But Dancer is my name among my new circle of friends, friends you may some day meet.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, AFrontiersladysTask)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, BattleWithTheTimberclaws)
end

