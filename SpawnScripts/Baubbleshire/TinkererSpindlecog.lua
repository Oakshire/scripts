--[[
	Script Name	: SpawnScripts/Baubbleshire/TinkererSpindlecog.lua
	Script Purpose	: Tinkerer Spindlecog 
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: Speaking Gnomish
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/UnknownLanguage.lua") --added 2022.03.13 Dorbin

local SpindleCogQuest = 5447

function spawn(NPC)
ProvidesQuest(NPC, SpindleCogQuest)
conversation = CreateConversation()
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else   
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn, 6) then -- Hailed Language Check
            Garbled(NPC,Spawn)
	else --Provides quest checks
      if not HasCompletedQuest (Spawn, SpindleCogQuest) and not HasQuest (Spawn, SpindleCogQuest) then 
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Errgh... If only I could get this blasted stamping mechanism working again!  What a pity!  I really need this confounded contraption to run smoothly!")
	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog001.mp3", 1759041547, 1110190424)
    PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	Dialog.AddLanguage(6)
	Dialog.AddOption("What would you need the stamping device for anyway?", "Stamping")
	Dialog.AddOption("Yes, a pity indeed. ")
	Dialog.Start()

       elseif  GetQuestStep (Spawn, SpindleCogQuest) <=2 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog009.mp3", "", "ponder", 575428579, 1524232466, Spawn)
            if GetQuestStep (Spawn, SpindleCogQuest) == 2 then
            AddConversationOption(conversation, "Here are the sinews.", "QuestStep2")
            else
            AddConversationOption(conversation, "Not yet. I'll be back later.")
            end
	        StartConversation(conversation, NPC, Spawn, "Have you gotten the sinews I need?")

        elseif GetQuestStep (Spawn, SpindleCogQuest) == 3 or GetQuestStep (Spawn, SpindleCogQuest) == 4 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)	
            if GetQuestStep (Spawn, SpindleCogQuest) == 4 then
            AddConversationOption(conversation, "Here is the grease you asked for.", "QuestStep4")
            else
            AddConversationOption(conversation, "Not yet. I'll be back later.")
            end
	        StartConversation(conversation, NPC, Spawn, "I still need the grease! Any luck finding some?")
        
        elseif GetQuestStep (Spawn, SpindleCogQuest) == 5 or GetQuestStep (Spawn, SpindleCogQuest) == 6 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)
            if GetQuestStep (Spawn, SpindleCogQuest) == 6 then
            AddConversationOption(conversation, "Here is the ink you asked for.", "QuestFinish")
            else  
            AddConversationOption(conversation, "Not yet. I'll be back later.")
            end
	        StartConversation(conversation, NPC, Spawn, "All I'm lacking is ink! Have you found some yet?")

        elseif HasCompletedQuest(Spawn, SpindleCogQuest) then
            conversation = CreateConversation()
            PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog012.mp3", "", "sigh", 3868930391, 1103597775, Spawn)
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
	        AddConversationOption(conversation, "Well, hopefully the components will help.")
	        AddConversationOption(conversation, "I'll just be... over here.")
	        StartConversation(conversation, NPC, Spawn, "No matter what I do it just won't work! Oh well, I'll keep on it. They don't call me Tinkerer Spindlecog for nothing!")
            end
            end
    end
end
	    


function Stamping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("For part of my official duties that I can't tell you about!  No matter how rudimentary the system, all government officials must be mysterious about what they do--didn't you know? Someday, I might need to officially stamp something! Say, maybe you can help me!")
	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog002.mp3", 233880122, 4191683346)
	Dialog.AddLanguage(6)

	Dialog.AddOption("Well, all right, I'll help you.  Have you thought about doing it manually?", "Dialog3")
	Dialog.AddOptionRequirement(REQ_LEVEL_GREATER_OR_EQUAL, 20)	

	Dialog.AddOption("I'm afraid I can't right now.  Good luck getting it fixed. ")
	Dialog.Start()
end

function QuestStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SpindleCogQuest)
end


function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course not!  That's horribly inefficient!  Why would I ever do something by hand when I can build a machine to do it for me? If I could only connect these two ... Ah! Brilliant! Brilliant! Let me jot this down for you, and once you get this stuff, bring it back straightaway!  It's a bit of a trek, but I'm sure you are up to the challenge!")
	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog003.mp3", 2508515239, 4260547544)
	Dialog.AddLanguage(6)
	Dialog.AddOption("I'll see what I can do.", "QuestStart")
	Dialog.AddOption("Actually... I should get my affairs in order. Good luck!")
	Dialog.Start()
end

function QuestStep2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Splendid!  Now let's see ... I can use this to wind around these two spindles here ... yes, yes ... perfect!  Now that you work for me, you can get me grease so it'll run smoothly!  Lucky for you, I planned ahead ... everything I need is on this list. Splendid!  Now, off again with you. Go on!")
	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog004.mp3",1204035343, 2271829644)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddLanguage(6)
	Dialog.AddOption("I'll be back with these items.", "QuestStep3")
	Dialog.AddOption("Try not to blow anything up.","QuestStep3")
	Dialog.Start()
end

function QuestStep4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, yes YES! This works perfectly! Just a little here... a little there... wait! I need ink! How am I suppose to stamp without ink?! Here. Take this list and find some ink for me. This is it!")
	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog004.mp3",1204035343, 2271829644)
    PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddLanguage(6)
	Dialog.AddOption("I'll be back with these items.","QuestStep5")
	Dialog.AddOption("More? This is it! No more after this!","QuestStep5")
	Dialog.Start() 
end

function QuestFinish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is it! The final piece I need to complete my machine. Thank you for everything you've done. Now... I must put this together... very carefully...")
--	Dialog.AddVoiceover("voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog005.mp3",0, 0)
    PlayFlavor(NPC, "", "", "smile", 0, 0, Spawn)
	Dialog.AddLanguage(6)
	Dialog.AddOption("Was that enough to finish it?","QuestPreReward")
	Dialog.AddOption("Finally!","QuestPreReward")
	Dialog.Start() 
end

function QuestPreReward(NPC, Spawn)
                PlayFlavor(NPC, "", "", "explosion", 0, 0, Spawn)	
                AddTimer(NPC,1600,"QuestPreReward2",Spawn)
end

function QuestPreReward2(NPC, Spawn)
	            PlayAnimation(NPC,"11764", Spawn)
                conversation = CreateConversation()
	            FaceTarget(NPC, Spawn)
	            AddConversationOption(conversation, "Are you alright?","QuestPreReward2")
	            AddConversationOption(conversation, "Whoa!","QuestPreReward2")
	            StartConversation(conversation, NPC, Spawn, "Uhhhg...")
    end

function QuestPreReward2(NPC, Spawn)
          conversation = CreateConversation()
                 PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog012.mp3", "", "sigh", 3868930391, 1103597775, Spawn)
	            FaceTarget(NPC, Spawn)
	            AddConversationOption(conversation, "Thank you, and good luck!","QuestReward")
	            AddConversationOption(conversation, "Thank you for not blowing me up as well.","QuestReward")
	            StartConversation(conversation, NPC, Spawn, "No matter what I do it just won't work! Oh well, I'll keep on it. They don't call me Tinkerer Spindlecog for nothing! Here, please take this for all your help.")
    end

function QuestStep3(NPC, Spawn)
    	SetStepComplete(Spawn, SpindleCogQuest, 2)
    end
    
function QuestStep5(NPC, Spawn)
    	SetStepComplete(Spawn, SpindleCogQuest, 4)
    end
    
function QuestReward(NPC, Spawn)
    	SetStepComplete(Spawn, SpindleCogQuest, 6)
end
    