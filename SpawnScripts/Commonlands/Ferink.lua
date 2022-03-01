--[[
    Script Name    : SpawnScripts/Commonlands/Ferink.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.21 09:05:53
    Script Purpose : 
                   : 
--]]

local ARatDivided = 447
local CantWeAllJustGetAlong = 448
local TheLoverbirdsRoost = 449
local AHardManToPlease = 450

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")    
end

function InRange(NPC, Spawn)
if not HasQuest(Spawn, ARatDivided) and not  HasCompletedQuest(Spawn, ARatDivided) then
ProvidesQuest(NPC, ARatDivided)
SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, ARatDivided) then
ProvidesQuest(NPC, CantWeAllJustGetAlong)
SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, CantWeAllJustGetAlong) then
ProvidesQuest(NPC,  TheLoverbirdsRoost)
SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn,  TheLoverbirdsRoost) then
ProvidesQuest(NPC,  AHardManToPlease)
SetInfoFlag(NPC)
SetVisualFlag(NPC)   
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, ARatDivided) and not HasCompletedQuest(Spawn, ARatDivided) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's wrong, Ferink?", "Option1")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Oh whys oh whys can't we be together?  Oh whys oh whys. My true love, the loves of my life is locked away on the other sides of the river and I can't be with her. Oh whys does it has to be this ways? It's not fair, not fair at all. Something must be done!")
	elseif GetQuestStep(Spawn, ARatDivided) == 1  or GetQuestStep(Spawn,  CantWeAllJustGetAlong) == 1 or GetQuestStep(Spawn,  CantWeAllJustGetAlong) == 2  or GetQuestStep(Spawn, TheLoverbirdsRoost) == 1 or GetQuestStep(Spawn, TheLoverbirdsRoost) == 2 or GetQuestStep(Spawn, AHardManToPlease) == 1 or GetQuestStep(Spawn, AHardManToPlease) == 2 then
	QuestProgress(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, ARatDivided) and not HasQuest(Spawn, CantWeAllJustGetAlong ) and not  HasCompletedQuest(Spawn, CantWeAllJustGetAlong)  then
	Option5(NPC, Spawn)
	elseif GetQuestStep(Spawn, ARatDivided) == 2 or GetQuestStep(Spawn, CantWeAllJustGetAlong) == 3 or GetQuestStep(Spawn, TheLoverbirdsRoost) == 3 or GetQuestStep(Spawn, AHardManToPlease) == 3 then
	QuestFinish(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, CantWeAllJustGetAlong) and not HasQuest(Spawn, TheLoverbirdsRoost) and not HasCompletedQuest(Spawn, TheLoverbirdsRoost) then
	Option10(NPC, Spawn)
	elseif HasCompletedQuest(Spawn,TheLoverbirdsRoost) and not HasQuest(Spawn, AHardManToPlease) and not HasCompletedQuest(Spawn,  AHardManToPlease) then
	Option14(NPC, Spawn)
	elseif HasCompletedQuest(Spawn,TheLoverbirdsRoost) and HasCompletedQuest(Spawn, CantWeAllJustGetAlong) and HasCompletedQuest(Spawn,  AHardManToPlease)  and HasCompletedQuest(Spawn, ARatDivided) then
	PlayFlavor(NPC, "", "Hello again! Amoora and I are doing wonderful, thanks again.", "", 0, 0, Spawn)
end
    end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You poor thing, what can I do to help?", "Option2")
	AddConversationOption(conversation, "A love struck ratonga...  bye!")
	StartConversation(conversation, NPC, Spawn, "Amoora, my love. She is the love of my life, the shining beacon of my heart, my passion, my preciouses Amoora has my heart and holds it captive. I aches so when I can't be nears her, when I can't smell her sweet smelling fur.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Nice. Kinda stinky, but still nice.", "Option3")
	AddConversationOption(conversation, "I am not really in the mood for a sob story.")
	StartConversation(conversation, NPC, Spawn, "Oh, just because I'm a ratonga doesn't means I can't be with the loves of my life. No, it does not! This is just not right! I should go to her now! But I can't;  her parents don't like me. I don't know why... I'm a nice person, right?  Oh, my Amoora.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll go find her.", "offer")
	AddConversationOption(conversation, "Sorry, I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "Go to her! Tell her I loves her! Tell her I'll give anything to be with her! Tell her...  just tell her I loves her for me.  My Amoora.")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, ARatDivided, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Cheer up, Ferink.")
	StartConversation(conversation, NPC, Spawn, "She was?  Oh my Amoora! I am lost without her.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I told you that I talked to her. Calm down, Ferink.", "Option6")
	AddConversationOption(conversation, "Yes I did,  but I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I must gets her back! Did you see her? Did you... did you tell her I loves her?  Did you? Answer me!  ")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She is beautiful.", "Option7")
	AddConversationOption(conversation, "And the flowers too, good bye!")
	StartConversation(conversation, NPC, Spawn, "How was she? What did she say to you? You must tells me. You see why I loves her so... her voice, her beauty, even the day seems brighter when she's nearby. ")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, of course.", "Option8")
	AddConversationOption(conversation, "No I don't have time for this. Bye!")
	StartConversation(conversation, NPC, Spawn, "More beautiful than anyone! I has an idea... maybe if you talks to her father and my mother... If you talks to them they might agree to let us be together. Yes, will you do this for me?  My Amoora!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, I will give it a shot.", "offer2")
	StartConversation(conversation, NPC, Spawn, "Oh good... You will need to go to the ratongas and talks to my mother. You will needs to go to the kerra and talk to her father. Yes, you tells them we love each other and wants to spend our lives together for ever and always. You go tell them, all right?")
end

function Option9(NPC, Spawn)
    SetStepComplete(Spawn,  CantWeAllJustGetAlong, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, NPC, Spawn, "I know! It's awful! I haves to think of something.")
end


function Option10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What favor?", "Option11")
		AddConversationOption(conversation, "No, I don't have time.")
	StartConversation(conversation, NPC, Spawn, "Oh my heart aches, I needs my Amoora. Our parents are set in the old ways. It seems like there is nothing that will change their minds about us. Wait, I haves an idea!  Will you do me a favor?")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Where is he?", "Option12")
	AddConversationOption(conversation, "I can't right now... maybe later.")
	StartConversation(conversation, NPC, Spawn, "You go find my friend. My friend's name is Jojo.  He'll knows what to do. He always knows what to do.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can do that for you.", "offer3")
	AddConversationOption(conversation, "It's too far out of my way, sorry.")
	StartConversation(conversation, NPC, Spawn, "My friend Jojo Karanja rests in the Seafarer's Roost in the City of Freeport. Jojo is very smart. Yes, he knows what to do. He help Amoora and mes.  He knows!")
end

function Option13(NPC, Spawn)
    SetStepComplete(Spawn, TheLoverbirdsRoost, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "He doesn't seem to like you much, that's for sure.")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I knews you could do it. Now, if somehow we can convice Jaharin.")
end

function Option14(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Defend her from what?", "Option15")
	AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Danger! There is much danger now. You came just in time to help me! She is in danger! You must helps me defend my Amoora.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What do you want me to do?", "Option16")
	AddConversationOption(conversation, "No, I have to go.")
	StartConversation(conversation, NPC, Spawn, "The orcses! They're coming to hurts my Amoora. Oh, I couldn't let anything happens to my Amoora, my love, the passions of my life. No I would just die inside if anything were to happens to my Amoora. You will help me, yes?")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay.", "offer4")
	AddConversationOption(conversation, "No, Good luck.")
	StartConversation(conversation, NPC, Spawn, "When the orcses come, you fight them away. The orcses are coming to hurts Amoora and her family! We must not let them! We keep the orcses away!")
end

function Option17(NPC, Spawn)
    SetStepComplete(Spawn, AHardManToPlease, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You are welcome, Ferink.")
	StartConversation(conversation, NPC, Spawn, "Well, I was right behind you... I was about to charge into the battle, but then I thoughts of Amoora and how upset she would be if I got hurt... Anyways, you were amazing! Thank you so much! Now I can be with my Amoora again! Here, takes this as a small token of my appreciation.")
end






function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "Oh, my Amoora, I misses you so...   I wish I could be at her sides. Her beautiful smile, her sweet purr... To be able to holds her hand again.")
end

function QuestFinish(NPC, Spawn)
      FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, ARatDivided) == 2 then
	AddConversationOption(conversation, "I spoke to Amoora, Ferink.  She seems as upset as you are over this whole thing.", "Option4")
	elseif GetQuestStep(Spawn, CantWeAllJustGetAlong) == 3 then
	AddConversationOption(conversation, "I spoke with Riki and Jaharin.  I'm afraid they are not very happy about you and Amoora.", "Option9")
	elseif GetQuestStep(Spawn, TheLoverbirdsRoost) == 3 then
	AddConversationOption(conversation, "Great news, Ferink!  You were right.  Jojo helped me convince Riki to give Amoora a chance.", "Option13")
	elseif GetQuestStep(Spawn,  AHardManToPlease) == 3 then
	AddConversationOption(conversation, "We did it, Ferink!  Jaharin is not only going to give you a chance; he wants you to come to dinner with his family tonight.  By the way, where were you during the fight?", "Option17")
	end
	AddConversationOption(conversation, "I'm a little tired of you sobbing all the time.")
	StartConversation(conversation, NPC, Spawn, "Sob!... Sniffle! ...")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, ARatDivided)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, CantWeAllJustGetAlong)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, TheLoverbirdsRoost)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, AHardManToPlease)
end


function respawn(NPC)
	spawn(NPC)
end