--[[
    Script Name    : SpawnScripts/Commonlands/Mooshga.lua
    Script Author  : Premierio015
    Script Date    : 2020.09.06 02:09:46
    Script Purpose : Offer quests "Hyena Jerky", "Seafood Surprise", "Crack Pot", "Wisp-er Sweet Nothings", "Rhino-rific", "O' Mugwump Where Art Thou", "Overlord's Omelet", "Pachyderm Punch", "Mushroom Madness"
                   : 
--]]

local HyenaJerky = 429
local SeafoodSurprise = 430
local CrackPot = 431
local WisperSweetNothings = 432
local Rhinorific = 433
local OMugwumpWhereArtThou = 434
local OverlordsOmelet = 435
local PachydermPunch = 436
local MushroomMadness = 437
local Eleventh_AJourneyOutsideTheCity = 5658

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end


function InRange(NPC, Spawn)
  if not HasCompletedQuest(Spawn, HyenaJerky) then
  ProvidesQuest(NPC, HyenaJerky)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, HyenaJerky) then
  ProvidesQuest(NPC, SeafoodSurprise)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, SeafoodSurprise) then
  ProvidesQuest(NPC, CrackPot)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, CrackPot) then
  ProvidesQuest(NPC, WisperSweetNothings)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, WisperSweetNothings) then
   ProvidesQuest(NPC, Rhinorific)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, Rhinorific) then
  ProvidesQuest(NPC, OMugwumpWhereArtThou)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, OMugwumpWhereArtThou) then
ProvidesQuest(NPC, OverlordsOmelet)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, OverlordsOmelet) then
ProvidesQuest(NPC, PachydermPunch)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, PachydermPunch) then
ProvidesQuest(NPC, MushroomMadness)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

--[[
function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, HyenaJerky) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Captain Arellius said you could use a hand. You are a cook?", "dlg1")
    AddConversationOption(conversation, "I don't think I'm hungry right now.")
    StartConversation(conversation, NPC, Spawn, "So, you be adventurer sent by Militia to help Mooshga? You look like you hungry! Mooshga feed you good!")
    elseif GetQuestStep(Spawn, HyenaJerky) == 1 then
    quest1progress(NPC, Spawn)
    elseif GetQuestStep(Spawn, HyenaJerky) == 2 then
    dlg3(NPC, Spawn)
end   
    end
--]]


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1055.mp3", "", "", 0, 0, Spawn)
    if not HasQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, SeafoodSurprise) and not HasCompletedQuest(Spawn, WisperSweetNothings) and not HasCompletedQuest(Spawn, Rhinorific) and not HasCompletedQuest(Spawn, OMugwumpWhereArtThou) and not HasCompletedQuest(Spawn, OverlordsOmelet) and not HasCompletedQuest(Spawn, PachydermPunch) and not HasCompletedQuest(Spawn, MushroomMadness) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, I'm not hungry.")
	AddConversationOption(conversation, "I guess that depends on the menu.", "dlg1")
	StartConversation(conversation, NPC, Spawn, "Mooshga meet new friend! You look hungry. Mooshga hungry. You hungry?")
	elseif GetQuestStep(Spawn, HyenaJerky) == 1 or GetQuestStep(Spawn, SeafoodSurprise) == 1 or GetQuestStep(Spawn, CrackPot) == 1 or GetQuestStep(Spawn, WisperSweetNothings) == 1 or GetQuestStep(Spawn, Rhinorific) == 1 or GetQuestStep(Spawn, OMugwumpWhereArtThou) == 1 or GetQuestStep(Spawn, OverlordsOmelet) == 1 or GetQuestStep(Spawn, PachydermPunch) == 1 or GetQuestStep(Spawn, MushroomMadness) == 1 then
	questprogress(NPC, Spawn)
	elseif GetQuestStep(Spawn, HyenaJerky) == 2 or GetQuestStep(Spawn, SeafoodSurprise) == 2 or GetQuestStep(Spawn, CrackPot) == 2 or GetQuestStep(Spawn, WisperSweetNothings) == 2 or GetQuestStep(Spawn, Rhinorific) == 2 or GetQuestStep(Spawn, OMugwumpWhereArtThou) == 2 or GetQuestStep(Spawn, OverlordsOmelet) == 2 or GetQuestStep(Spawn, PachydermPunch) == 2 or GetQuestStep(Spawn, MushroomMadness) == 2 then
	QuestComplete(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and not HasCompletedQuest(Spawn, SeafoodSurprise) then
	dlg3(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and not HasCompletedQuest(Spawn, CrackPot) then
	dlg7(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and not HasCompletedQuest(Spawn, WisperSweetNothings) then
	dlg11(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and not HasCompletedQuest(Spawn, Rhinorific) then
	dlg15(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and  HasCompletedQuest(Spawn, Rhinorific) and not HasCompletedQuest(Spawn, OMugwumpWhereArtThou) then
	dlg19(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and  HasCompletedQuest(Spawn, Rhinorific) and  HasCompletedQuest(Spawn, OMugwumpWhereArtThou) and not HasCompletedQuest(Spawn, OverlordsOmelet) then
	dlg23(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and  HasCompletedQuest(Spawn, Rhinorific) and  HasCompletedQuest(Spawn, OMugwumpWhereArtThou) and  HasCompletedQuest(Spawn, OverlordsOmelet) and not HasCompletedQuest(Spawn, PachydermPunch) then
	dlg27(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and  HasCompletedQuest(Spawn, Rhinorific) and  HasCompletedQuest(Spawn, OMugwumpWhereArtThou) and  HasCompletedQuest(Spawn, OverlordsOmelet) and HasCompletedQuest(Spawn, PachydermPunch) and not HasCompletedQuest(Spawn, MushroomMadness) then
	dlg31(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, HyenaJerky) and HasCompletedQuest(Spawn, SeafoodSurprise) and HasCompletedQuest(Spawn, CrackPot) and HasCompletedQuest(Spawn, WisperSweetNothings) and  HasCompletedQuest(Spawn, Rhinorific) and  HasCompletedQuest(Spawn, OMugwumpWhereArtThou) and  HasCompletedQuest(Spawn, OverlordsOmelet) and HasCompletedQuest(Spawn, PachydermPunch) and HasCompletedQuest(Spawn, MushroomMadness) then
	PlayFlavor(NPC, "", "Hello, friend... Mooshga fed you well, no?", "", 0, 0, Spawn)
    end
    if GetQuestStep(Spawn,  Eleventh_AJourneyOutsideTheCity) == 1 then
        SetStepComplete(Spawn,  Eleventh_AJourneyOutsideTheCity, 1)
    end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Come to think of it, I am hungry. What are you going to make?", "dlg2")
 AddConversationOption(conversation, "An ogre baker? I'll be on my way.")
 StartConversation(conversation, NPC, Spawn, "Mooshga is greatest baker in all Commonlands! You want Mooshga make somethin' for you?")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Jerky sounds good. I'll do it.", "offer")
 AddConversationOption(conversation, "Ogre cooking sounds scary to me. Bye!")
 StartConversation(conversation, NPC, Spawn, "Mooshga hungry for jerky. Plus Mooshga try to make old secret recipe of famous ancestor chef. You go collect pieces for jerky so Mooshga can figure out recipe! It made from hyena meat. Get carrion hound ears for Mooshga.")
end



function dlg3(NPC, Spawn)
     FaceTarget(NPC, Spawn)
     conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I am. I would love more of your cooking, Mooshga.", "dlg4")
	AddConversationOption(conversation, "What? No thanks... I just ate!")
	StartConversation(conversation, NPC, Spawn, "You still look hungry! You hungry? Mooshga knows when people hungry. Mooshga will feed you but you do something for Mooshga first.")
end


function dlg4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What type of claws?", "dlg5")
		AddConversationOption(conversation, "I think i just lost my apetite")
	StartConversation(conversation, NPC, Spawn, "Mooshga make special surprise today. Mooshga needs claws for surprise recipe she figure out.")
end

function dlg5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm getting hungrier by the minute.", "offer2")
	AddConversationOption(conversation, "Oh... I think i just lost my apetite.")
	StartConversation(conversation, NPC, Spawn, "Mooshga need special claws from crabs. The HUGE ones. You find crabs in southeast. They live in freshwater. Near old tower there is good spot. You go find crabs and snap tasty claws off, then bring back to Mooshga.")
end

function QuestComplete(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	    local conversation = CreateConversation()
	    if GetQuestStep(Spawn, HyenaJerky) == 2 then
	    AddConversationOption(conversation, "I have brought you the ears that you asked for.", "quest1complete")
	    elseif GetQuestStep(Spawn, SeafoodSurprise) == 2 then
        AddConversationOption(conversation, "I have the huge crab claws for your soup, Mooshga.", "dlg6")
        elseif GetQuestStep(Spawn, CrackPot) == 2 then
    	AddConversationOption(conversation, "Good news Mooshga. I was able to gather the iron clusters you need to get your pot fixed.", "dlg10")
    	elseif GetQuestStep(Spawn, WisperSweetNothings) == 2 then
    	AddConversationOption(conversation, "I have your wisp essences that you asked for, Mooshga.", "dlg14")
    	elseif GetQuestStep(Spawn, Rhinorific) == 2 then
    	AddConversationOption(conversation, "Those rhinos were tough, but I was able to get the hooves you need for the muffins.", "dlg18")
    	elseif GetQuestStep(Spawn, OMugwumpWhereArtThou) == 2 then
    	AddConversationOption(conversation, "Mugwump sends his regards. He had the herbs that you asked for.", "dlg22")
    	elseif GetQuestStep(Spawn, OverlordsOmelet) == 2 then
    	AddConversationOption(conversation, "Here are the speckled eggs you asked for, Mooshga.", "dlg26")
    	elseif GetQuestStep(Spawn, PachydermPunch) == 2 then
    	AddConversationOption(conversation, "I am not sure how you get punch from tusks, and I don't think that I want to know, but here they are.", "dlg30")
    	elseif GetQuestStep(Spawn, MushroomMadness) == 2 then
    	AddConversationOption(conversation, "I have the mushroom caps that you asked for. Here ya go, Mooshga.", "dlg35")
        end
        AddConversationOption(conversation, "Nothing right now.")
    	StartConversation(conversation, NPC, Spawn, "You back so quick! What you have for Mooshga?")
end    


function dlg6(NPC, Spawn)
    SetStepComplete(Spawn, SeafoodSurprise, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga makes you some too. Here you go.")
end  


function dlg7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "What happened, Mooshga?", "dlg10")
    AddConversationOption(conversation, "You seem busy. I'll come back another time.")
	StartConversation(conversation, NPC, Spawn, "The pot! Mooshga not believe what happened.")
end

function dlg8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Did you catch it?", "dlg11")
	AddConversationOption(conversation, "Poor little squirrel. That's just mean, Mooshga. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Well...  Mooshga was cooking. After put water in Moosgha's cooking pot when fire was really hot, tasty squirrel run by. Mooshga thought would make tasty appetizer for dinner. Mooshga chased tasty and forgot about boiling pot.")
end

function dlg9(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure.", "offer3")
	AddConversationOption(conversation, "I don't have time right now, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "No, squirrel got away. When Mooshga return, all water was boiled away and pot got too hot. Mooshga tried put more water in pot, but pot cracked. Now Mooshga can't cook. Maybe you can help Mooshga fix pot?")
end 
    
function dlg10(NPC, Spawn)
    SetStepComplete(Spawn, CrackPot, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Oooo... good! Mooshga gets back to making her goodies again. Mooshga don't need all iron to fix pot. You keep rest of iron.")
end

function dlg11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "Oh really, what are you making?", "dlg12")
    AddConversationOption(conversation, "Oh no, I can't. I'm watching my diet.")
	StartConversation(conversation, NPC, Spawn, "You hungry now? Mooshga has idea for next meal. Come close so Mooshga not let others know secret of ancestor's recipe.")
end   

function dlg12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I think I know the one.", "dlg13")
	AddConversationOption(conversation, "No, I don't have time for this. Bye")
	StartConversation(conversation, NPC, Spawn, "Mooshga knows what you like. Do you know of old statue on way to docks at sea?")
end

function dlg13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will get some essences.", "offer4")
	AddConversationOption(conversation, "Umm... No thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Good. Go to statue and find wisps. You bash them and bring back some for Mooshga. Mooshga make something good for you. You go get wisp essences for Mooshga! Mooshga will make yummy wisp tofu for you.")
end


function dlg14(NPC, Spawn)
    SetStepComplete(Spawn, WisperSweetNothings, 2)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga very happy. Try some tasty Mooshga made.")  
end    


function dlg15(NPC, Spawn)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What type are you making?", "dlg16")
	AddConversationOption(conversation, "I'm full. No thanks.")
	StartConversation(conversation, NPC, Spawn, "Mmmmm... You smell that? Mooshga gets ready to bake muffins. You want some?")
end

function dlg16(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok. What do you need, Mooshga?", "dlg17")
	AddConversationOption(conversation, "I don't have time right now, but thanks!")
	StartConversation(conversation, NPC, Spawn, "Mooshga's favorite! Rhino muffins! Mooshga have no parts to next batch. If you want try muffins, you need get Mooshga ingredients.")
end


function dlg17(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That sounds crunchy. I guess I can do it, though.", "offer5")
	AddConversationOption(conversation, "Rhino hoof muffins? Yuck!  No thanks!")
	StartConversation(conversation, NPC, Spawn, "Mooshga need three-toed rhino feets. You go get three-toed rhino feets for Mooshga, then will make best muffins for you!")
end

function dlg18(NPC, Spawn)
    SetStepComplete(Spawn, Rhinorific, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Excellent.")
	StartConversation(conversation, NPC, Spawn, "Just what Mooshga need. This good for big batch.")
end

function dlg19(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I have.", "dlg20")
	   AddConversationOption(conversation, "No, I don't have time.")
	StartConversation(conversation, NPC, Spawn, "You come to help Mooshga again?")
end

    
function dlg20(NPC, Spawn)    
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Your brother?", "dlg21")
	AddConversationOption(conversation, "Sorry, Mooshga I don't have time to listen right now.")
	StartConversation(conversation, NPC, Spawn, "Mooshga run out of herbs. With so much cooking, Mooshga go through spices fast. Brother usually bring Mooshga fresh herbs, but brother didn't this week.")
end


function dlg21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Good to know. What do you need me to do?", "offer6")
	AddConversationOption(conversation, "Sorry, I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Yes! Mooshga's brother knows best herbs in forest. Nektulos Forest is where he find herbs. He spend lot of time there near bridge. Nektulos spices old family secret. They keep people coming for Mooshga's food.")
end


function dlg22(NPC, Spawn)
    SetStepComplete(Spawn, OMugwumpWhereArtThou, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Mooshga not had these for long time. You good friend.")
end

function dlg23(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I am. What is on the menu today?", "dlg24")
		AddConversationOption(conversation, "I am, but I don't have time.")
	StartConversation(conversation, NPC, Spawn, "Mooshga's friend! You hungry now?")
end

function dlg24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Omelets sound great.", "dlg25")
	AddConversationOption(conversation, "I am not in the mood for breakfast.")
	StartConversation(conversation, NPC, Spawn, "Mooshga in mood for breakfast. You like omelet?")
end


function dlg25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Where do I find these eggs?", "offer7")
		AddConversationOption(conversation, "I'm sorry, I don't have time.")
	StartConversation(conversation, NPC, Spawn, "Good. Omelets good breakfast tasty. Mooshga make you some omelet now... Where Mooshga's eggs?! Mooshga think Feterman dwarf been in supplies again. He always \''borrow\'' food from Mooshga. If you want omelet, go get Mooshga eggs. Special eggs for family recipe. Mooshga need vulrich eggs with green spots. Those best eggs for breakfast omelet.")
end    

function dlg26(NPC, Spawn)
    SetStepComplete(Spawn, OverlordsOmelet, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure.")
	StartConversation(conversation, NPC, Spawn, "These eggs good for breakfast. You want omelet?")
end

function dlg27(NPC, Spawn)
     FaceTarget(NPC, Spawn)
	local conversation = CreateConversation() 
	AddConversationOption(conversation, "Was it something you ate?", "dlg28")
	AddConversationOption(conversation, "Sorry to hear that Mooshga, but I have to go.")
	StartConversation(conversation, NPC, Spawn, "Ooof... Mooshga not feel good today.")
end

function dlg28(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That sounds painful.", "dlg29")
	AddConversationOption(conversation, "Sounds like you need a doctor, not an adventurer.")
	StartConversation(conversation, NPC, Spawn, "No. Not something Mooshga eat, something try to eat Mooshga. Mooshga was collecting ingredients for special pachyderm punch. Pachyderms wasn't too happy for that. Mooshga almost been trampled!")
end

function dlg29(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, I can do that.", "offer8")
	AddConversationOption(conversation, "I'll pass today, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "You go collect the pristine tusks for Mooshga? Only found on plains elephants. Mooshga needs for punch but wants to sit down now.")
end

function dlg30(NPC, Spawn)
    SetStepComplete(Spawn, PachydermPunch, 2) 
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Umm... I'll pass.")
	StartConversation(conversation, NPC, Spawn, "You try some punch!")
end

function dlg31(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "May I try some?", "dlg32")
	AddConversationOption(conversation, "That smells terrible. Good day, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "You back? Mooshga do some more cooking.")
end	

function dlg32(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()   
	AddConversationOption(conversation, "Mushrooms?", "dlg33")
	AddConversationOption(conversation, "I don't have time for this now Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Food not ready yet. Mooshga need mushrooms for recipe to be right.")
end

function dlg33(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can get some.", "dlg34")
	AddConversationOption(conversation, "No thanks! Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Special dark caps. Dark cap mushroom only grows in the Nektulos Forest.")
end

function dlg34(NPC, Spawn)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be careful, I can do it.", "offer9")
	AddConversationOption(conversation, "Maybe I'd better not.")
	StartConversation(conversation, NPC, Spawn, "They grow near dark river on both sides, barely inside forest there. Friend be careful though; mean beasts in there. Dark cap mushroom have bright purple tops so they easy to see.")
end  

function dlg35(NPC, Spawn)
    SetStepComplete(Spawn, MushroomMadness, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "It was nothing, Mooshga.")
	StartConversation(conversation, NPC, Spawn, "Mooshga not seen these for ages. These perfect for special stew!")
end
    

function quest1complete(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, HyenaJerky, 2)
 conversation = CreateConversation()
 AddConversationOption(conversation, "You're welcome.")
 StartConversation(conversation, NPC, Spawn, "Oh, thanks you! You make Mooshga happy Ogre.")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, HyenaJerky)
end

function offer2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, SeafoodSurprise)
end


function offer3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, CrackPot)
end


function offer4(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, WisperSweetNothings)
end

function offer5(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Rhinorific)
end

function offer6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, OMugwumpWhereArtThou)
end

function offer7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, OverlordsOmelet)
end

function offer8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, PachydermPunch)
end

function offer9(NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, MushroomMadness)
end


function questprogress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Okay, okay. Mooshga, I'm going.")
	StartConversation(conversation, NPC, Spawn, "You don't look hungry enough. You go away! NO FOOD FOR YOU!")
end	


    
    

function respawn(NPC)

end

