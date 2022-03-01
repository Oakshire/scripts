--[[
    Script Name    : SpawnScripts/Commonlands/ZaZaLenska.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.20 07:05:14
    Script Purpose : 
                   : 
--]]

local ZaZasLittleProblem = 451

function spawn(NPC)
ProvidesQuest(NPC, ZaZasLittleProblem)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn, ZaZasLittleProblem) and not HasCompletedQuest(Spawn, ZaZasLittleProblem) then
	AddConversationOption(conversation, "I don't know whether I have or not.  Describe him for me.", "Option1")
	elseif GetQuestStep(Spawn, ZaZasLittleProblem) == 4 then
	AddConversationOption(conversation, "I've got what you needed.", "Option4")
	end
	AddConversationOption(conversation, "I've got to do some visiting of my own.")
	StartConversation(conversation, NPC, Spawn, "Have you seen my husband, Valeri?  He leaves home too often. He comes and goes as he pleases, and I never know where he is! I've had other husbands, and I know the signs of a cheater.")
	PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska000.mp3", "", "sad", 1406443097, 3435338985, Spawn)
end
   

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Private residences?  You mean, visiting friends?", "Option2")
		AddConversationOption(conversation, "Nope, haven't seen him.  Good luck in your search.")
	StartConversation(conversation, NPC, Spawn, "He's tall and slim with jet black fur and three hoops in his left ear. He's handsome, oh, so handsome!  Surely you could not have missed him!  Unless, perhaps, his visits are in a ... private home.")
		PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska001.mp3", "", "flourish", 3365678449, 1708895230, Spawn)

end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What kind of help are you looking for?", "Option3")
	AddConversationOption(conversation, "I won't be able to help.  Sorry.")
	StartConversation(conversation, NPC, Spawn, "Oh, to think of Valeri--my sweet, precious husband--in the arms of another!  No!  I cannot bear it!  I must know the truth!  And I know just the way.  Mama's potion will show me whether he's faithful to his ZaZa, or not.  Can you help this poor, unhappy wife?")
	PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska002.mp3", "", "sad", 25646826, 3084524681, Spawn)
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will help you.  What will you need?", "offer")
		AddConversationOption(conversation, "Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "I need ingredients for my potion.  Not too many and they must be fresh. I need to spread this potion on my Valeri's clothes ... and then I will have the answers I need.  Let me write this down for you; it's complex.")
	PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska003.mp3", "", "flourish", 1627354695, 3008513581, Spawn)
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, ZaZasLittleProblem, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I hope your potion works.  Whatever it does.")
	StartConversation(conversation, NPC, Spawn, "Oh, yes ... I'm sure you do.  Well, then, you helped me, and I can repay you.  It's not much, considering what you did for me and my Valeri, but it's all I can give you.  At least for now...")
	PlayFlavor(NPC, "voiceover/english/zaza_lenska/fprt_hood03/quests/zazalenska/zazalenska008.mp3", "", "", 2402358505, 3193482805, Spawn)
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ZaZasLittleProblem)
end



function respawn(NPC)
	spawn(NPC)
end