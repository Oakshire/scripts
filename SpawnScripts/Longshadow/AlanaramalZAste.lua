--[[
	Script Name		: SpawnScripts/LongshadowAlley/AlanaramalZAste.lua
	Script Purpose	: Alanaramal Z'Aste
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

-- Item ID's
local ARTISAN_ESSENTIALS_VOLUME_2 = 31373

function spawn(NPC)
end

function RandomGreeting(NPC,Spawn)
    local choice = MakeRandomInt(1,3)
    	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1033.mp3", 0, 0, Spawn)
	elseif choice == 5 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1033.mp3", 0, 0, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if HasQuest(Spawn,5862) and GetQuestStep(Spawn,5862) == 8 then
    Dialog1(NPC,Spawn)
    else
	conversation = CreateConversation()
    RandomGreeting(NPC,Spawn)

	if GetTradeskillLevel(Spawn) <2 then
	conversation = CreateConversation()
	    --not HasItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1) then
		AddConversationOption(conversation, "Yes, please teach me.", "dlg_39_1")
		AddConversationOption(conversation, "No, not at the moment.")
		StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
	else
        Say(NPC,"Good day! If you are looking for more crafting training, seek out the trainers in West Freeport. They can help you beyond the basics I provide.","Spawn")
--		Say(NPC, "I have nothing else to teach you for the moment. Please return to me when you have earned enough experience to choose your profession.", Spawn)
	end
end
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
if GetTradeskillLevel(Spawn) <2  then
        Quest = GetQuest(Spawn,5749)
        SummonItem(Spawn,1030001,1)
        SetTradeskillLevel(Spawn,2)
        SetTradeskillClass(Spawn,1)
	    SendMessage(Spawn, "You are now an Artisan!")
        SendPopUpMessage(Spawn, "You are now an Artisan!", 200, 200, 200)            
    end
--[[	Revamped
    -- artisan essentials volume 2
	SummonItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1)
]]--
    AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")

end

function Dialog1(NPC,Spawn)
    SetStepComplete(Spawn,5862,8)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("Welcome to the halls of the Dark Bargainers.  Deals can be made here for most anything you might be searching for.")
    RandomGreeting(NPC,Spawn)
    Dialog.AddOption("Just looking around. As you were.")
 	Dialog.AddOption("What can I do here?", "CanDo")
   if GetTradeskillLevel(Spawn)<2 then
	Dialog.AddOption("I'm rather new at crafting. Can you help me?", "HelpMe")
	end
	Dialog.Start()
end

function CanDo(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddDialog("Many things can be done at a tradeskill society and there are many in the city... but ours is obviously the best!  Each is equipped with quality crafting stations and fuels needed to become proficient at any tradeskill class you might desire.")
	Dialog.AddOption("Anything else I should know?", "CanDo2")
    if GetTradeskillLevel(Spawn)<2 then
	Dialog.AddOption("I'm rather new at crafting. Can you help me?", "HelpMe")
	end
	Dialog.Start()
end

function CanDo2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Our society also has our very own Broker, who you can talk to in order to buy and sell items from other players.  A very handy connection, indeed!")
	Dialog.AddOption("Thank you for all the information!")
    if GetTradeskillLevel(Spawn)<2 then
	Dialog.AddOption("I'm rather new at crafting. Can you help me?", "HelpMe")
	end
	Dialog.Start()
end

function HelpMe(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("In order to be competitive in today's marketplace, the Dark Bargainers provides you with this basic guide to commerce.  You will learn many things on your own over time, so do not consider this book your only guide to success.  Rely on your own resources and skills and you will prosper.")
 	Dialog.AddOption("What can I do here?", "CanDo")
	Dialog.AddOption("Thank you for all the information!")
    if GetTradeskillLevel(Spawn) <2  then
    SummonItem(Spawn,1030001,1)
    SetTradeskillLevel(Spawn,2)
        SetTradeskillClass(Spawn,1)
	    SendMessage(Spawn, "You are now an Artisan!")
        SendPopUpMessage(Spawn, "You are now an Artisan!", 200, 200, 200)        
    end
	Dialog.Start()
end