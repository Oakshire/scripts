--[[
	Script Name	: SpawnScripts/Antonica/Dancer.lua
	Script Purpose	: Dancer 
	Script Author	: premierio015,Dorbin
	Script Date	: 09.05.2022 - Updated using Dialog Module - Dorbin  05/12/2023
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local AFrontiersladysTask = 5528
local BattleWithTheTimberclaws = 5530


function spawn(NPC)
ProvidesQuest(NPC, BattleWithTheTimberclaws)
ProvidesQuest(NPC, AFrontiersladysTask)
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must be an adventurer who's new to these parts. Who else would brave the wilds so far from the watchful eye of the Qeynos Guard?")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona000.mp3", 2049178803, 173582214)
	if not HasQuest(Spawn, AFrontiersladysTask) and not HasCompletedQuest(Spawn, AFrontiersladysTask) then
	Dialog.AddOption("I am a bit of an adventurer and a bit of an explorer.", "Option1")
	elseif GetQuestStep(Spawn, AFrontiersladysTask) == 2 then
	Dialog.AddOption("Sighard gave me this special arrow.", "Option2")
	elseif GetQuestStep(Spawn, AFrontiersladysTask) == 4 or HasCompletedQuest(Spawn, AFrontiersladysTask) and not HasQuest(Spawn, BattleWithTheTimberclaws) and not HasCompletedQuest(Spawn, BattleWithTheTimberclaws) then
	Dialog.AddOption("The arrow is in the training dummy.", "Option4")
	end
	if GetQuestStep(Spawn, BattleWithTheTimberclaws) == 2 then
	Dialog.AddOption("I tried my best, but their numbers are strong.", "Option7")
    end
	if HasQuest(Spawn, BattleWithTheTimberclaws) then
	Dialog.AddOption("You so quickly forget the world's greatest adventurer.", "Option6")
    end
	Dialog.AddOption("I cannot chat now. Farewell.")
	Dialog.Start()
end



function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Adventurer ... explorer ... how would you like to be a courier too?")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona001.mp3", 3474200771, 3431607508)
	PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    if CanReceiveQuest(Spawn,AFrontiersladysTask) then
	Dialog.AddOption("I am always available to assist a frontiersman.", "offer")
    end
	Dialog.AddOption("I cannot assist. Farewell.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, AFrontiersladysTask, 2)
	StartConversation(conversation, NPC, Spawn, "Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now, can you take that arrow and apply it to a training dummy in Archer Woods? Search for the dummy with the symbol of a golden tree and green arrow.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona003.mp3", 1306460538, 3525298419)
	Dialog.AddOption("What is this arrow?", "Option3")
	Dialog.AddOption("I shall do as requested.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The arrow is a special marker for some friends of mine.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona004.mp3", 2295000938, 2111794040)
	Dialog.AddOption("I understand.")
	Dialog.Start()
end


function Option4(NPC, Spawn)
    if GetQuestStep(Spawn, AFrontiersladysTask) == 4 then
    SetStepComplete(Spawn, AFrontiersladysTask, 4)
    end
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you, courier. I trust you have done as I requested. If not, Trusaris will tell me. He sees all in Archer Woods, including your every step.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona005.mp3", 3454016717, 1472655172)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("I did not see any Trusaris.", "Option5")
	Dialog.AddOption("Farewell.")
	Dialog.Start()
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Trusaris is the great oak of Archer Woods. He has lived in these hills for many ages. He has seen much grief in his lifetime. Now gnolls are taking over what is left of his home.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona006.mp3", 4166511705, 1130362343)
    if CanReceiveQuest(Spawn,BattleWithTheTimberclaws) then
	Dialog.AddOption("I will help clear his home.", "offer2")
    end
	Dialog.AddOption("Fascinating. Perhaps you will find someone to help. I must find adventure elsewhere.")
	Dialog.Start()
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Forget the world's greatest? I think not, but your name may have slipped my mind. Ha! Fear not, my brave courier. The gnolls of Archer Woods are the only ones near here that have yet to know your name.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona008.mp3", 3282299207, 1917374337)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddOption("They will know me when I rid the woods of them!")
	Dialog.Start()
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Your best is all that we ask. I shall reward you for servicing what remains of Archer Woods. I shall mention your name among my friends.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona010.mp3", 3182250399, 3459878429)
	Dialog.AddOption("Thank you, Dancer.", "Option8")
	Dialog.Start()
end


function Option8(NPC, Spawn)
    SetStepComplete(Spawn, BattleWithTheTimberclaws, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("By the way, courier, Sighard asked me about you. He wishes to speak with you.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona011.mp3", 2906971481, 4178549824)
	Dialog.AddOption("Is your name really Dancer?", "Option9")
	Dialog.AddOption("Thank you, Dancer.")
	Dialog.Start()
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There was a dark time in my life when dancing was not a thing of joy, but a subjugated torment. It is a time I choose not to recall. But Dancer is my name among my new circle of friends, friends you may some day meet.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona007.mp3", 1777708143, 1227602978)
	PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
	Dialog.AddOption("Farewell, Dancer.")
	Dialog.Start()
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, AFrontiersladysTask)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, BattleWithTheTimberclaws)
end

