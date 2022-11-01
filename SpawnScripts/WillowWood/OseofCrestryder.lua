--[[
	Script Name	: SpawnScripts/WillowWood/OseofCrestryder.lua
	Script Purpose	: Oseof Crestryder <Crafting Trainer>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

-- Item ID's
local ARTISAN_ESSENTIALS_VOLUME_2 = 31373

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if HasQuest(Spawn,5760) and GetQuestStep(Spawn,5760) == 8 then
    Dialog1(NPC,Spawn)
    elseif GetTradeskillLevel(Spawn)<=3 then
	GenericHail(NPC, Spawn)
	
    FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- artisan essentials volume 2
	if not HasItem(Spawn, 31373, 1) then
		AddConversationOption(conversation, "Yes, please teach me.", "dlg_14_1")
	end
	AddConversationOption(conversation, "No, not at the moment.")
	StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
	else
		Say(NPC, "I have nothing else to teach you for the moment. Please return to me when you have earned enough experience to choose your profession.", Spawn)
	end
end
end



function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- artisan essentials volume 2
	SummonItem(Spawn, 31373, 1)
	if GetTradeskillLevel(Spawn) < 2 then
		SetTradeskillLevel(Spawn, 2)
	end

	AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end


function Dialog1(NPC,Spawn)
    SetStepComplete(Spawn,5761,8)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
	Dialog.AddDialog("The Wayfarer's Stockpilers always have room for another strong back, if you were looking for work. Do you want to come aboard our fellowship?")
	Dialog.AddVoiceover("voiceover/english/oseof_crestryder/qey_village05/100_trd_oseof_crestryder_joining_c958bd9a.mp3", 2296086720, 2447301916)
	Dialog.AddOption("I'm just saying hello!")
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
	Dialog.AddDialog("Lets see... here are the basics to get you going on your path to becoming an Artisan.  Scribe these recipies to learn the basics. If you are needing more information, step inside and there will be others that can help you.")
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