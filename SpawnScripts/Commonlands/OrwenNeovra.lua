--[[
    Script Name    : SpawnScripts/Commonlands/OrwenNeovra.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 09:02:56
    Script Purpose : 
                   : 
--]]

local TheSearchForArianna = 5211
local DoubleCrossNRevenge = 5512

function spawn(NPC)
ProvidesQuest(NPC, TheSearchForArianna)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, TheSearchForArianna) and not HasCompletedQuest(Spawn, TheSearchForArianna) then
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra001.mp3", "", "", 1077223898, 923115266, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Who are you talking about?", "dlg1")
    AddConversationOption(conversation, "I'll stay out of your way.")
    StartConversation(conversation, NPC, Spawn, "She's gone! There was nothing I could do. Once I finish this cutter, that will all change. I got a few scars that I need to return to their dealers.")
elseif GetQuestStep(Spawn, TheSearchForArianna) == 1 then
   conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra004.mp3", "", "", 4138977626, 707724934, Spawn)
   AddConversationOption(conversation, "I'll return when I know more.")
 StartConversation(conversation, NPC, Spawn, "What word have you of my wife?  Why do you return?  Don't toy with me, less you wish I test my blade on your flesh.")
elseif GetQuestStep(Spawn, TheSearchForArianna) == 2 then
     conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra005.mp3", "", "", 3462277209, 3891009395, Spawn)
     AddConversationOption(conversation, "I have some news regarding Ariana.", "dlg2")
      StartConversation(conversation, NPC, Spawn, "That look on your face ... I fear what news you bear. ")
elseif HasCompletedQuest(Spawn, TheSearchForArianna) and not HasQuest(Spawn, DoubleCrossNRevenge)then
    completed(NPC, Spawn)
elseif GetQuestStep(Spawn, DoubleCrossNRevenge) == 2 then
  dlg2_1(NPC, Spawn)
 elseif HasCompletedQuest(Spawn, TheSearchForArianna) and  HasCompletedQuest(Spawn, DoubleCrossNRevenge) then
completed2(NPC, Spawn)
  
end
   end
  

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra002.mp3", "", "", 3552530226, 2927764176, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Maybe I could help look for her while you finish your weapon?", "offer")
 AddConversationOption(conversation, "I'll stay out of your way.")
StartConversation(conversation, NPC, Spawn, "My wife, Ariana.  Bleeding in the dust, I watched the orcs drag her away. But when I finish this blade, I'll retrieve her from the grasp of those evil orcs!")
end


function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, TheSearchForArianna, 2)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra006.mp3", "", "", 3164653633, 3625417674, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Thank you and good luck to you.")
 StartConversation(conversation, NPC, Spawn, "My beloved Ariana, she was a wonderful woman. I'll keep her memories along with this necklace. Now that she is gone, I have no need for this blade.  Here, take it with you.  Maybe it will serve you a better fate than it served me.")
end


function dlg2_1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra008.mp3", "", "", 3130407316, 2865401233, Spawn)
    conversation = CreateConversation()
	AddConversationOption(conversation, "There is something you need to know.", "dlg2_2")
	StartConversation(conversation, NPC, Spawn, "Why have you returned?  What is it you want?")
end

function dlg2_2(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra009.mp3", "", "", 4013708046, 1230365972, Spawn)
	AddConversationOption(conversation, "Well... it's like this...", "dlg2_3")
	StartConversation(conversation, NPC, Spawn, "Indeed. And just what is it that I need to know?") 
end


function dlg2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra010.mp3", "", "", 3257599221, 596125004, Spawn)
	AddConversationOption(conversation, "I see.", "dlg2_4")
	StartConversation(conversation, NPC, Spawn, "I see.  I bear no malice towards you. I knew deep within my soul she was still alive, that's why I started working on another blade -- one just as keen and deadly.")
	end
	
function dlg2_4(NPC, Spawn)
    SetStepComplete(Spawn, DoubleCrossNRevenge, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra011.mp3", "", "", 2265339342, 3606681884, Spawn)
	AddConversationOption(conversation, "Thank you.", "dlg2_5")
	StartConversation(conversation, NPC, Spawn, "Please accept this blade, it's the twin to the first, and with the news you bring I see it only fitting that the two be united.")
 end 

function dlg2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra012.mp3", "", "", 2944541827, 2877536670, Spawn)
    AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "If you'll excuse me. I've much to plan for, and apparently, not very much time.")
end

function completed(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra007.mp3", "", "", 525715332, 1987571715, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Be at peace Orwen.")
 StartConversation(conversation, NPC, Spawn, "Leave me to grieve in peace. ")
end

function completed2(NPC, Spawn)
FaceTarget(NPC, Spawn)   
PlayFlavor(NPC, "voiceover/english/orwen_neovra/commonlands/quests/orwen_neovra/orwen_neovra013.mp3", "", "", 308445949, 2635437472, Spawn)
conversation = CreateConversation()
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "I've no time for idle chit chat.")
end

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, TheSearchForArianna)
end

function respawn(NPC)

end