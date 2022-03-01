--[[
	Script Name	: SpawnScripts/TheCommonlands/MadamVi.lua
	Script Purpose	: Madam Vi 
	Script Author	: premierio015
	Script Date	: 2021.17.05
	Script Notes	: 
--]]

local QuenchingTheirThirst = 5222 
local FarFromHome = 5223
local NoRiskNoReward = 5224
local SeerStone = 5225


function InRange(NPC, Spawn)
  if not HasQuest(Spawn, QuenchingTheirThirst) and not HasCompletedQuest(Spawn, QuenchingTheirThirst) then
  ProvidesQuest(NPC, QuenchingTheirThirst)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, QuenchingTheirThirst) then
  ProvidesQuest(NPC, FarFromHome)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, FarFromHome) then
  ProvidesQuest(NPC, NoRiskNoReward)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, NoRiskNoReward) then
  ProvidesQuest(NPC, SeerStone)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC)
FaceTarget(NPC, Spawn)
if not HasQuest(Spawn, QuenchingTheirThirst) and not HasoCompletedQuest(Spawn, QuenchingTheirThirst) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What assistance do you require?", "Option1")
	AddConversationOption(conversation, "I'm busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
elseif GetQuestStep(Spawn, QuenchingTheirThirst) == 1 or GetQuestStep(Spawn, QuenchingTheirThirst) == 2 or  GetQuestStep(Spawn, QuenchingTheirThirst) == 3 or GetQuestStep(Spawn, FarFromHome) == 1 or GetQuestStep(Spawn, NoRiskNoReward) == 1 or GetQuestStep(Spawn, SeerStone) == 1 or GetQuestStep(Spawn, SeerStone) == 2 or GetQuestStep(Spawn, SeerStone) == 3   then
    QuestProgress(NPC, Spawn)
elseif GetQuestStep(Spawn, QuenchingTheirThirst) == 4 or GetQuestStep(Spawn, FarFromHome) == 2 or GetQuestStep(Spawn, NoRiskNoReward) == 2 or GetQuestStep(Spawn, SeerStone) == 4 then
    QuestFinish(NPC, Spawn)
elseif HasCompletedQuest(Spawn, QuenchingTheirThirst) and not HasCompletedQuest(Spawn, FarFromHome) then
    Option3(NPC, Spawn)
elseif HasCompletedQuest(Spawn, QuenchingTheirThirst) and HasCompletedQuest(Spawn, FarFromHome) and not HasCompletedQuest(Spawn, NoRiskNoReward) then
    Option7(NPC, Spawn)
elseif HasCompletedQuest(Spawn, QuenchingTheirThirst) and HasCompletedQuest(Spawn, FarFromHome) and  HasCompletedQuest(Spawn, NoRiskNoReward) and not HasCompletedQuest(Spawn, SeerStone) then
    Option11(NPC, Spawn)
elseif HasCompletedQuest(Spawn, QuenchingTheirThirst) and HasCompletedQuest(Spawn, FarFromHome) and  HasCompletedQuest(Spawn, NoRiskNoReward) and HasCompletedQuest(Spawn, SeerStone) then
    PlayFlavor(NPC, "", "Wonderful to see you, thanks again for all your help.", "", 0, 0, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure.", "offer")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end


function Quest_Finish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, QuenchingTheirThirst) == 4 then
    AddConversationOption(conversation, "I have filled the flasks for you, Madam.", "Option2")
    elseif GetQuestStep(Spawn, FarFromHome) == 2 then
    AddConversationOption(conversation, "I was able to find your friends. They were very grateful for the water.", "Option6")
    elseif GetQuestStep(Spawn, NoRiskNoReward) == 2 then
    AddConversationOption(conversation, "I was able to find your stone, Madam.", "Option10")
    elseif GetQuestStep(Spawn, SeerStone) == 4 then
    AddConversationOption(conversation, "I have the things you need for your Seer Stone, Madam.", "Option15")
    end
    AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hello again. Any news?")
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, QuenchingTheirThirst, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome, Madam.")
	StartConversation(conversation, NPC, Spawn, "Excellent work!")
end   
    
function Option3(NPC, Spawn) 
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Actually, I do.", "Option4")
	AddConversationOption(conversation, "Not for you.")
	StartConversation(conversation, NPC, Spawn, "Hello again. Do you have any further time to spare?")
end

    
function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No problem, where are they?", "Option5")
	AddConversationOption(conversation, "I care not for your friends.")
	StartConversation(conversation, NPC, Spawn, "A section of my entourage seems to be lost out there. I need you to find them, give them the water you collected earlier, and relay their location to me.")
end
    
    
function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will find them.", "offer2")
	StartConversation(conversation, NPC, Spawn, "Head out to the northwest. They have been missing for quite some time.")
end

    
function Option6(NPC, Spawn)
    SetStepComplete(Spawn, FarFromHome, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I agree.")
	StartConversation(conversation, NPC, Spawn, "Great news! Nothing like an ice cold drink on a hot day.")
end


function Option7(NPC, Spawn)
FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "It was my pleasure, but you seem distracted. Do you require further assistance?", "Option8")
	AddConversationOption(conversation, "I did do great, didn't I? I'll be off now.")
	StartConversation(conversation, NPC, Spawn, "Hello, friend. My companions are rehydrated and back to themselves, thanks to you.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I meant no offense. Is there anything I can do to rid you of this distraction?", "Option9")
	AddConversationOption(conversation, "I think you need to get out of the sun. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Wha..distracted? Hmm, well I suppose you are correct, but please do keep your observations to yourself in the future. ")
end
    
 function Option9(NPC, Spawn)   
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will find the gem for you.", "offer3")
	AddConversationOption(conversation, "Wailing Caves? Are you insane?!")
	StartConversation(conversation, NPC, Spawn, "There is a gem that I truly desire which has evaded me.  I heard that it can be found by breaking open clumps of rocks inside the Wailing Caves to the west. Look for dull stone outcroppings near the vibrant blue rocks found inside.")
end
   
     
 function Option10(NPC, Spawn)  
    SetStepComplete(Spawn, NoRiskNoReward, 2)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Oh yes, this is just what I needed. Look here, the gem is right inside. Oh, it's just gorgeous, and will work perfectly for what I have in mind. Thank you.")
end
  
     

function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Some, yes.", "Option12")
	AddConversationOption(conversation, "No, nothing at all. I better go.")
	StartConversation(conversation, NPC, Spawn, "You have certainly proven yourself, and it is I who am honored. Tell me, do you know anything of mage craft?")
end    

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ahh, so that is what the gem samples were for.", "Option13")
		AddConversationOption(conversation, "I am sick of your ego. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "There are certain items that, when created, can help a mage focus his or her power. These items enhance my already impressive gift of Sight.")
end


function Option13(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am very interested. Where do I look?", "Option14")
	AddConversationOption(conversation, "No, not right now. Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Exactly. You are quite intuitive. The gem you retrieved for me is in itself not enough to create the quality item I desire. Would you be interested in fetching the rest of the components I need?")
end

function Option14(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be off then.", "offer4")
	AddConversationOption(conversation, "I don't think I will help.")
	StartConversation(conversation, NPC, Spawn, "To finish my Seer Stone, I will need some components that you can gather for me from different beasts around the Commonlands. I will need some bone dust, a few water glands and, just for good measure, some sparkly bits.")
end
 
    
function Option15(NPC, Spawn)
    SetStepComplete(Spawn, SeerStone, 4)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome, Madam.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank you... I can complete my stone, at long last!")
end
  
    
 

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, QuenchingTheirThirst )
end


function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, FarFromHome)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, NoRiskNoReward)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, SeerStone)
end

function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Not yet. Patience, my lady.")
	StartConversation(conversation, NPC, Spawn, "Have you completed your task?")
end	


