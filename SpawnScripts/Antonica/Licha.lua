--[[
    Script Name    : SpawnScripts/Antonica/Licha.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 09:08:15
    Script Purpose : 
                   : 
--]]

local SparklyOrNothing = 5340-- Sparkly or Nothing quest
local ANewDressNOW = 5341 -- A New Dress, NOW! quest
local LichaDancingQueen = 5342 -- Licha, Dancing Queen quest
local SheHadRibbonsInHerHair = 5343 -- She Had Ribbon in Her Hair quest

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange")
end

function InRange(NPC, Spawn)
  if not HasQuest(Spawn, SparklyOrNothing) and not HasCompletedQuest(Spawn, SparklyOrNothing) then
  ProvidesQuest(NPC, SparklyOrNothing)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, SparklyOrNothing) then
  ProvidesQuest(NPC, ANewDressNOW)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, ANewDressNOW) then
  ProvidesQuest(NPC, LichaDancingQueen)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, LichaDancingQueen) then
  ProvidesQuest(NPC, SheHadRibbonsInHerHair)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
	end
	if not HasQuest(Spawn, SparklyOrNothing) and not HasCompletedQuest(Spawn, SparklyOrNothing) then
     Option1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, SparklyOrNothing) and not HasQuest(Spawn, ANewDressNOW) and not HasCompletedQuest(Spawn, ANewDressNOW) then
    Option6(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, SparklyOrNothing) and HasCompletedQuest(Spawn, ANewDressNOW) and not HasQuest(Spawn, LichaDancingQueen) and not HasCompletedQuest(Spawn, LichaDancingQueen) then
    Option10(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, SparklyOrNothing) and HasCompletedQuest(Spawn, ANewDressNOW) and HasCompletedQuest(Spawn, LichaDancingQueen) and not HasQuest(Spawn, SheHadRibbonsInHerHair) and not HasCompletedQuest(Spawn, SheHadRibbonsInHerHair) then
    Option14(NPC, Spawn)
    elseif GetQuestStep(Spawn, SparklyOrNothing) == 1 or GetQuestStep(Spawn, SparklyOrNothing) == 2 or GetQuestStep(Spawn, ANewDressNOW) == 1 or GetQuestStep(Spawn, LichaDancingQueen) == 1 or GetQuestStep(Spawn, LichaDancingQueen) == 2 or GetQuestStep(Spawn, LichaDancingQueen) == 3 or GetQuestStep(Spawn,  SheHadRibbonsInHerHair) == 1  then
    Quest_Progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, SparklyOrNothing) == 3 or GetQuestStep(Spawn, ANewDressNOW) == 2 or GetQuestStep(Spawn, LichaDancingQueen) == 4 or GetQuestStep(Spawn,  SheHadRibbonsInHerHair) == 2  then
    Quest_Finish(NPC, Spawn)
      elseif HasCompletedQuest(Spawn, SparklyOrNothing) and HasCompletedQuest(Spawn, ANewDressNOW) and HasCompletedQuest(Spawn, LichaDancingQueen) and  HasCompletedQuest(Spawn, SheHadRibbonsInHerHair) then
    PlayFlavor(NPC, "", "You already have everything I want to give.", "", 0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What? Umm, okay.", "Option2")
	AddConversationOption(conversation, "See something you like?", "Option3")
	AddConversationOption(conversation, "I've had enough orders from you.")
	StartConversation(conversation, NPC, Spawn, "Turn around. Let me look you over.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What is it you want me to do?", "Option4")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "I suppose you will have to do. There are things I need and surely no one expects me to dirty my flawless nails doing them. So, you will do them for me?")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can assure you, miss, that I can kill anything I want to.", "Option4")
	AddConversationOption(conversation, "Adventurers do not have time for baths or spoiled children. Good day.")
	StartConversation(conversation, NPC, Spawn, "Hardly.... Tell me, what dirt pile did you crawl out of? Your armor, if you can call it that, is filthy. Really, you should wash more. And you call that a weapon? I would be surprised if you could kill a lowly mouse with that thing.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Basilisks are dangerous.", "Option5")
	AddConversationOption(conversation, "Dear gods, I'm out of here.")
	StartConversation(conversation, NPC, Spawn, "Do you know what a girl loves? By the blank look on your face, I would say no. Anyways, I adore everything that shines and sparkles. In fact, basilisks have the most wonderful shiny scales. I wanted one as a pet, but father said no.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "As you wish.", "offer")
	AddConversationOption(conversation, "Get them yourself. A good wallop might do you good.")
	StartConversation(conversation, NPC, Spawn, "Too dangerous for you, my strong, dirty adventurer? I think not! Bring me the shiniest scales you can find, and do it quickly.")
end

-- 2nd  QUEST
function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What do you want, now?", "Option7")
	AddConversationOption(conversation, "I don't know, and I don't want to know.")
	StartConversation(conversation, NPC, Spawn, "Why is he so mean?")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Calm yourself. Where is it being delivered?", "Option9")
	AddConversationOption(conversation, "I'm shocked!", "Option8")
	AddConversationOption(conversation, "Oh no... Bye.")
	StartConversation(conversation, NPC, Spawn, "My father refuses to go pick up and pay for the new dress I ordered. How can I be seen wearing this old rag? I look like you! I want the new dress now!")
end


function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Fine. Where is it being delivered?", "Option9")
	AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "Your sarcasm is not appreciated! This is no laughing matter, adventurer of filth. That dress is imported from a distant land, and it is priceless. Priceless, I tell you! Go and get it for me now.")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.", "offer2")
		AddConversationOption(conversation, "No.")
	StartConversation(conversation, NPC, Spawn, "The merchant will be arriving at the dock in The Thundering Steppes in a matter of seconds! Go and get it for me or I shall never be happy again! Go... NOW!")
end


-- 3d QUEST

function Option10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Your face is contorted. What do you want now?", "Option11")
	AddConversationOption(conversation, "Still rude, I see. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Still filthy, I see.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Performance?", "Option13")
	AddConversationOption(conversation, "You are as pretty as a pig.", "Option12")
	AddConversationOption(conversation, "Your narcissism is overwhelming. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Don't I look gorgeous? Ah, this new dress is perfect for my performance, but what is a performance without an audience?")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Fine, fine...  What do you want?", "Option13")
	AddConversationOption(conversation, "My stench and I will be going.")
	StartConversation(conversation, NPC, Spawn, "How dare you! Never will you see a pig dance as I will! Adventurer of swine, assist me now or rid me of your stench!")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll try.", "offer3")
	AddConversationOption(conversation, "No one will be willing, trust me. Bye.")
	AddConversationOption(conversation, "I'm too busy right now.")
	StartConversation(conversation, NPC, Spawn, "I will be performing an original dance number of my own creation. It is an inspired piece... A story told through movement. It is the story of a princess finding her one, true love. Now, bring my audience quickly, while the muse still flows through me.")
end

--- 4TH QUEST
function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
		AddConversationOption(conversation, "What happened to you?", "Option15")
	AddConversationOption(conversation, "Well, you're not exactly full of rainbows and sunshine, friend.")
		AddConversationOption(conversation, "I'm rather busy right now.")
	StartConversation(conversation, NPC, Spawn, "Why would anyone hurt poor, little me?")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Who did this to you? What evil men?", "Option16")
	AddConversationOption(conversation, "Not as lonely as you think. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Men... Ghastly, evil men attacked me and stole my favorite ribbons. Whatever shall I do? How can I live without those ribbons? How will I ever be beautiful again? I will grow old, ugly, and alone, like you.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, okay... I'll go get them.", "offer4")
	AddConversationOption(conversation, "You will never learn. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Evil, vile highwaymen! Go get them back, unless you are too scared, adventurer of slime.")
end





function Quest_Finish(NPC, Spawn)
    if GetQuestStep(Spawn, SparklyOrNothing) == 3 then
    SetStepComplete(Spawn, SparklyOrNothing, 3)
    elseif GetQuestStep(Spawn, ANewDressNOW) == 2 then
    SetStepComplete(Spawn, ANewDressNOW, 2)
    elseif GetQuestStep(Spawn, LichaDancingQueen) == 4 then
    SetStepComplete(Spawn, LichaDancingQueen, 4)
     elseif GetQuestStep(Spawn,  SheHadRibbonsInHerHair) == 2 then
    SetStepComplete(Spawn,  SheHadRibbonsInHerHair, 2)
    end
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Your gratitude is astounding.")
	StartConversation(conversation, NPC, Spawn, "Took you long enough.")
end

function Quest_Progress(NPC, Spawn)
PlayFlavor(NPC, "", "Aren't you done yet?", "", 0, 0, Spawn)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, SparklyOrNothing)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, ANewDressNOW)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, LichaDancingQueen)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, SheHadRibbonsInHerHair)
end

function respawn(NPC)
	spawn(NPC)
end