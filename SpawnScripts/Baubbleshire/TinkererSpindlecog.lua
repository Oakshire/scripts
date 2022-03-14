--[[
	Script Name	: SpawnScripts/Baubbleshire/TinkererSpindlecog.lua
	Script Purpose	: Tinkerer Spindlecog 
	Script Author	: Dorbin
	Script Date	: 2022.01.21
	Script Notes	: Speaking Gnomish
--]]

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
	FaceTarget(NPC, Spawn)
    if not HasLanguage(Spawn, 6) then -- Hailed Language Check
            Garbled(NPC,Spawn)
--[[        local choice = math.random(1,2)

        if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "garbled text not to be translated", "", 2230728991, 3389119515, Spawn, 6)
    	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome/ft/gnome/gnome_eco_garble_garbled_gm_cd85a24f.mp3", "Prepare! Here come the gnomes!", "", 2230728991, 3389119515, Spawn, 6)
	    end
--]]	
	else --Provides quest checks
      if not HasCompletedQuest (Spawn, SpindleCogQuest) and not HasQuest (Spawn, SpindleCogQuest) then 
	        FaceTarget(NPC, Spawn)
            conversation = CreateConversation()
	        PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog001.mp3", "", "sigh", 1759041547, 1110190424, Spawn)
	    
	        AddConversationOption(conversation, "What would you need the stamping device for anyway?", "Stamping")
	        AddConversationOption(conversation, "Yes, a pity indeed. ")
	        StartConversation(conversation, NPC, Spawn, "Errgh... If only I could get this blasted stamping mechanism working again!  What a pity!  I really need this confounded contraption to run smoothly!")
       --HasQuest (Spawn, SpindleCogQuest) and
       elseif  GetQuestStep (Spawn, SpindleCogQuest) == 1 then
             conversation = CreateConversation()
             FaceTarget(NPC, Spawn)
             PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)
             AddConversationOption(conversation, "Not yet. I'll be back later.")
	            StartConversation(conversation, NPC, Spawn, "Have you gotten the sinews I need?")

                
        elseif HasQuest (Spawn, SpindleCogQuest) and GetQuestStep (Spawn, SpindleCogQuest) == 2 then
             conversation = CreateConversation()
             FaceTarget(NPC, Spawn)
    
             PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)
             AddConversationOption(conversation, "Here are the sinews.", "QuestStep2")
             AddConversationOption(conversation, "Not yet. I'll be back later.")
	        StartConversation(conversation, NPC, Spawn, "Have you gotten the sinews I need?")

            
        elseif HasQuest (Spawn, SpindleCogQuest) and GetQuestStep (Spawn, SpindleCogQuest) == 3 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)	
                AddConversationOption(conversation, "Not yet. I'll be back later.")
	            StartConversation(conversation, NPC, Spawn, "I still need the grease! Any luck finding some?")

        
        elseif HasQuest (Spawn, SpindleCogQuest) and GetQuestStep (Spawn, SpindleCogQuest) == 4 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)	
                AddConversationOption(conversation, "Here is the grease you asked for.", "QuestStep4")
                AddConversationOption(conversation, "Not yet. I'll be back later.")
	            StartConversation(conversation, NPC, Spawn, "I still need the grease! Any luck finding some?")
        
        elseif HasQuest (Spawn, SpindleCogQuest) and GetQuestStep (Spawn, SpindleCogQuest) == 5  then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)
            	AddConversationOption(conversation, "Not yet. I'll be back later.")
	            StartConversation(conversation, NPC, Spawn, "All I'm lacking is ink! Have you found some yet?")

         elseif HasQuest (Spawn, SpindleCogQuest) and GetQuestStep (Spawn, SpindleCogQuest) ==  6 then
            conversation = CreateConversation()
            FaceTarget(NPC, Spawn)
            PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "ponder", 0, 0, Spawn)
            	AddConversationOption(conversation, "Here is the ink you asked for.", "QuestFinish")
            	AddConversationOption(conversation, "Not yet. I'll be back later.")
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

	    


function Stamping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog002.mp3", "", "", 233880122, 4191683346, Spawn)
    if GetLevel(Spawn) >= 20 then -- level check
	AddConversationOption(conversation, "If you can't do it by hand, I could help.", "QuestStart")
	end
	FaceTarget(NPC, Spawn)
	AddConversationOption(conversation, "I'm afraid I can't right now.  Good luck getting it fixed. ")
	StartConversation(conversation, NPC, Spawn, "For part of my official duties that I can't tell you about!  No matter how rudimentary the system, all government officials must be mysterious about what they do--didn't you know? Someday, I might need to officially stamp something! Say, maybe you can help me!")
end

function QuestStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SpindleCogQuest)
end

function QuestStep2(NPC, Spawn)
          conversation = CreateConversation()
          	PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog004.mp3", "", "thank", 1204035343, 2271829644, Spawn)
	            FaceTarget(NPC, Spawn)
	            AddConversationOption(conversation, "I'll be back with these items.", "QuestStep3")
	            AddConversationOption(conversation, "Try not to blow anything up.","QuestStep3")
	            StartConversation(conversation, NPC, Spawn, "Splendid! Oh, now let's see... I can use this to wind around... these two spindles here... yes Yes! Perfect! Oh, now that you work for me, you can get me grease so that it'll run smoothly! Lucky for you, I planned ahead. Everything I need is on this list. Splended! Now off again with you.")
    end

function QuestStep4(NPC, Spawn)
          conversation = CreateConversation()
	            PlayAnimation(NPC,"agree", Spawn)
	            FaceTarget(NPC, Spawn)
	            AddConversationOption(conversation, "I'll be back with these items.","QuestStep5")
	            AddConversationOption(conversation, "More? This is it! No more after this!","QuestStep5")
	            StartConversation(conversation, NPC, Spawn, "Ah, yes YES! This works perfectly! Just a little here... a little there... wait! I need ink! How am I suppose to stamp without ink?! Here. Take this list and find some ink for me. This is it!")
    end

function QuestFinish(NPC, Spawn)
          conversation = CreateConversation()
	            PlayAnimation(NPC,"clap", Spawn)
	            FaceTarget(NPC, Spawn)
	            AddConversationOption(conversation, "Was that enough to finish it?","QuestPreReward")
	            AddConversationOption(conversation, "Finally!","QuestPreReward")
	            StartConversation(conversation, NPC, Spawn, "This is it! The final piece I need to complete my machine. Thank you for everything you've done. Now... I must put this together... very carefully...")
    end

function QuestPreReward(NPC, Spawn)
                PlayFlavor(NPC, "", "", "explosion", 0, 0, Spawn)	
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
    