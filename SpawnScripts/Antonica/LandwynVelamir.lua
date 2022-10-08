--[[
	Script Name		:	LandwynVelamir.lua
	Script Purpose	:	Landwyn Velamir
	Script Author	:	premierio015
	Script Date		:	15.09.2021
	Script Notes	:	
--]]

local UnderAShadyTree = 5356
local ABowForABeauty = 5357
local SheWillBeAShiningPetal = 5358
local PeppermintsAndPotions = 5359
local SongToPrexus = 5360

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")   
ProvidesQuest(NPC,UnderAShadyTree)
ProvidesQuest(NPC,ABowForABeauty)
ProvidesQuest(NPC,SheWillBeAShiningPetal)
ProvidesQuest(NPC,PeppermintsAndPotions)
ProvidesQuest(NPC,SongToPrexus)
end

function InRange(NPC, Spawn)
  if not HasQuest(Spawn, UnderAShadyTree) and not  HasCompletedQuest(Spawn, UnderAShadyTree) then
  ProvidesQuest(NPC, UnderAShadyTree)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, UnderAShadyTree) then
  ProvidesQuest(NPC, ABowForABeauty)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, ABowForABeauty) then
  ProvidesQuest(NPC, SheWillBeAShiningPetal)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, SheWillBeAShiningPetal) then
  ProvidesQuest(NPC, PeppermintsAndPotions)
  SetInfoFlag(NPC)
SetVisualFlag(NPC) 
elseif HasCompletedQuest(Spawn, PeppermintsAndPotions)  then
  ProvidesQuest(NPC, SongToPrexus)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)     
end
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 5)
	if choice == 1 then 
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then 
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)    
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
	elseif choice == 4 then 
					PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", "", "", 0, 0, Spawn)
    	elseif choice == 5 then 
  				PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1012.mp3", "", "", 0, 0, Spawn)
  	end
  	if not HasQuest(Spawn, UnderAShadyTree) and not HasCompletedQuest(Spawn, UnderAShadyTree) then
	AddConversationOption(conversation, "It seems not as well as you.", "Option1")
	   	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Do you know love, my friend?")
	elseif GetQuestStep(Spawn, UnderAShadyTree) == 1 or GetQuestStep(Spawn, ABowForABeauty) == 1 or GetQuestStep(Spawn, ABowForABeauty) == 2 or GetQuestStep(Spawn, SheWillBeAShiningPetal) == 1 or GetQuestStep(Spawn, PeppermintsAndPotions) == 1 or GetQuestStep(Spawn, PeppermintsAndPotions) == 2 or GetQuestStep(Spawn, PeppermintsAndPotions) == 3 or GetQuestStep(Spawn, SongToPrexus) == 1   then
					PlayFlavor(NPC, "", "Returning to me with information of love?", "", 1689589577, 4560189, Spawn)
	elseif GetQuestStep(Spawn, UnderAShadyTree) == 2 then
	AddConversationOption(conversation, "Here are the flowers.", "Option4")
	   	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Her beauty will never wilt.")
elseif HasCompletedQuest(Spawn, UnderAShadyTree) and not HasQuest(Spawn, ABowForABeauty) and not HasCompletedQuest(Spawn, ABowForABeauty) then
   Option5(NPC, Spawn)
   elseif GetQuestStep(Spawn, ABowForABeauty) == 3 then
     Option8(NPC, Spawn)
elseif HasCompletedQuest(Spawn, UnderAShadyTree) and HasCompletedQuest(Spawn, ABowForABeauty) and not HasQuest(Spawn, SheWillBeAShiningPetal) and not HasCompletedQuest(Spawn, SheWillBeAShiningPetal) then
    Option10(NPC, Spawn)
    elseif GetQuestStep(Spawn, SheWillBeAShiningPetal) == 2 then
   Option13(NPC, Spawn)
 elseif HasCompletedQuest(Spawn, UnderAShadyTree) and HasCompletedQuest(Spawn, ABowForABeauty) and HasCompletedQuest(Spawn, SheWillBeAShiningPetal) and not HasQuest(Spawn, PeppermintsAndPotions) and not HasCompletedQuest(Spawn, PeppermintsAndPotions) then
     Option15(NPC, Spawn)
 elseif GetQuestStep(Spawn, ABowForABeauty) == 4 then
     Option17(NPC, Spawn)
 elseif HasCompletedQuest(Spawn, UnderAShadyTree) and HasCompletedQuest(Spawn, ABowForABeauty) and HasCompletedQuest(Spawn, SheWillBeAShiningPetal) and HasCompletedQuest(Spawn, PeppermintsAndPotions) and not HasQuest(Spawn, SongToPrexus) and not HasCompletedQuest(Spawn, SongToPrexus) then
 Option19(NPC, Spawn)
 elseif GetQuestStep(Spawn, SongToPrexus) == 2 then
    Option23(NPC, Spawn)
 elseif HasCompletedQuest(Spawn, UnderAShadyTree) and HasCompletedQuest(Spawn, ABowForABeauty) and HasCompletedQuest(Spawn, SheWillBeAShiningPetal) and HasCompletedQuest(Spawn, PeppermintsAndPotions)  and  HasCompletedQuest(Spawn, SongToPrexus) then
  	PlayFlavor(NPC, "", "I may have lost love, but I have grown as a person.", "", 1689589577, 4560189, Spawn)  
end
    end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Oh, what does she look like?", "Option2")
		AddConversationOption(conversation, "Well, good luck to you. Bye.")
	StartConversation(conversation, NPC, Spawn, "How lucky I am. I have been holding this gift for my love for quite some time, but, alas, my duties keep me here. How sad it is that this flower shall wilt in the wait. Still, I am lucky, for her beauty shall never wane.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She sounds beautiful. Your flowers are wilted though. Let me gather some new ones for you.", "Option3")
		AddConversationOption(conversation, "Good luck giving her the present. Bye.")
	StartConversation(conversation, NPC, Spawn, "How does one compare the beauty of a goddess using the words of mere mortals? Her hair is the color of the rising sun, containing the most glorious hues of the dawn. Her skin is akin to porcelain, flawless and immaculate. Her eyes are the green of a springtime meadow, with small bursts like the yellow of daisies in their center. Her lithe body is soft and curved like the waves of the sea. I only wish my eyes could witness her beauty once again.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will find them.", "offer")
	StartConversation(conversation, NPC, Spawn, "That would be splendid! Last I saw, there were some beneath a shaded tree north of here.")
end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, UnderAShadyTree, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Most excellent.")
	StartConversation(conversation, NPC, Spawn, "Splendid! They will look wonderful in her hair.")
end


function Option5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You seem to be full of it.", "Option6")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Such a powerful emotion love is, don't you think?")
end
   
    
function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What did you have in mind?", "Option7")
	AddConversationOption(conversation, "I'm sure she does, but I must go.")
	StartConversation(conversation, NPC, Spawn, "Aye, that I am. Not only is my maiden fair, but she is also resourceful. Many has she taught the art of survival and hunting. Her graceful hands make a dance out of the barbarism of warfare. Her eye is better than the eagle. I have long thought that she deserves a bow as remarkable as her.")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Absolutely.", "offer2")
	AddConversationOption(conversation, "No thanks. I am done courting your girl for you.")
	StartConversation(conversation, NPC, Spawn, "The insects of this area are sometimes seen as grotesque, but in them I see fluidity and strength. Their limbs would serve well as a handle to a bow worthy of her refined tastes. I, of course, am still stuck here. Would you assist me again? I need insect limbs to create a bow.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "Here are the legs.", "Option9")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "I would wait an eternity to be by love's side.")
end    


function Option9(NPC, Spawn)
    SetStepComplete(Spawn, ABowForABeauty, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good for you.")
	StartConversation(conversation, NPC, Spawn, "To make the best bow!")
end

function Option10(NPC, Spawn)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()  
	AddConversationOption(conversation, "Does love's flower still bloom?", "Option11")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Love fills one with the glow of life.")
end

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course she will. How may I help?", "Option12")
		AddConversationOption(conversation, "A true sadness. I must be going, though.")
	StartConversation(conversation, NPC, Spawn, "Quite well my friend! I have thought of the most splendid gift for my lady, but I cannot leave my post here. I fear she will never receive the gifts of my heart.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I would be honored.", "offer3")
	AddConversationOption(conversation, "Not now, friend.")
	StartConversation(conversation, NPC, Spawn, "I have met an armorer who says he can make a glowing pendant for my love. The pendant shall always light her gorgeous face as she walks along in this dreary world. For, always with her is the light of our love and always should it be displayed for all to see. The armorer says all he requires are the still-glowing shells of a klicknik. Please, will you retrieve them?")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Here are the shells.", "Option14")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Even in darkness I can find her.")
end

function Option14(NPC, Spawn)
    SetStepComplete(Spawn, SheWillBeAShiningPetal, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "Her glow will outshine anything I fear.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "When will the wedding occur?", "Option16")
		AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "Today is a joyous day, where my heart flies above the land.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Of course. Where is she?", "offer4")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "Her hand I have not yet won. I have taken the liberty of preparing a gift for my love. Would you be able to deliver it to her?")
end



function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I have looked everywhere.", "Option18")
	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "\"Together, forever,\"  is what I said.")
end

function Option18(NPC, Spawn)
    SetStepComplete(Spawn,  PeppermintsAndPotions, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Most assuredly.")
	StartConversation(conversation, NPC, Spawn, "I have heard from her, but am too distraught to talk. Please, return to me later.")
end

function Option19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What's wrong?", "Option20")
	 	AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "The horror! The shame!")
end


function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What happened?", "Option21")
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "I... I... She... Ohhh!!!")
end

function Option21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Calm down. There are other fish in the sea.", "Option22")
	AddConversationOption(conversation, "I will leave you to mourn.")
	StartConversation(conversation, NPC, Spawn, "I gave her my love. I gave her my heart. I gave her everything of me and I have been betrayed. I have been cast aside, as if our love was nothing. I have been thrown overboard from the vessel of our hearts! Oh, sorrowful woe!")
end

function Option22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How dare she! Of course I will do this for you.", "offer5")
	AddConversationOption(conversation, "I cannot, friend. You may regret it.")
	StartConversation(conversation, NPC, Spawn, "Take this. Take all of this and give it to Prexus! Give it to the sea I have made with my tears. Drown it as my heart and soul have been drowned in the misery of my... my.... Throw it in the sea, I beg of you! Go to Lonely Isle, that has a fitting name, and dump it all in.")
end


function Option23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Think of her no more.", "Option24")
		AddConversationOption(conversation, "I have no time for love.")
	StartConversation(conversation, NPC, Spawn, "What now? What shall I do?")
end

function Option24(NPC, Spawn)
    SetStepComplete(Spawn, SongToPrexus, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Don't give up hope.")
	StartConversation(conversation, NPC, Spawn, "I may never love again the way I loved her so.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, UnderAShadyTree)
end


function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, ABowForABeauty)
end


function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, SheWillBeAShiningPetal)
end


function offer4(NPC, Spawn)
 OfferQuest(NPC, Spawn, PeppermintsAndPotions)
end     

function offer5(NPC, Spawn)
 OfferQuest(NPC, Spawn, SongToPrexus)
end     

     