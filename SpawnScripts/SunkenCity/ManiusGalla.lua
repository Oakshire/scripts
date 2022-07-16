--[[
	Script Name	: SpawnScripts/SunkenCity/ManiusGalla.lua
	Script Purpose	: Manius Galla 
	Script Author	: Neatz09 (Updated by torsten)
	Script Date	: 12/31/2018 (15.07.2022)
	Script Notes	: 
--]]

local JoiningtheGang = 5656
local DonationsfromtheBanker = 5657

function spawn(NPC)
	ProvidesQuest(NPC, JoiningtheGang)
	ProvidesQuest(NPC, DonationsfromtheBanker)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasQuest(Spawn, JoiningtheGang) and not HasCompletedQuest(Spawn, JoiningtheGang) then
        dlg_9_1(NPC, Spawn)
    end
    if HasCompletedQuest(Spawn, JoiningtheGang) then
        if not HasQuest(Spawn, DonationsfromtheBanker) and not HasCompletedQuest(Spawn, DonationsfromtheBanker) then
            OfferQuest(NPC, Spawn, DonationsfromtheBanker)
        end
    end 
    if GetQuestStep(Spawn, JoiningtheGang) == 2 then
        AddConversationOption(conversation, "I've killed the raiders.", "dlg_17_1")
  	end
    if GetQuestStep(Spawn, DonationsfromtheBanker) == 2 then
        SetStepComplete(Spawn, DonationsfromtheBanker, 2)	
    end
        
	StartConversation(conversation, NPC, Spawn, "Mind your own business. If you keep gawking, you'll be walking away with a limp. And that's only because I'm in a good mood today.")
    AddConversationOption(conversation, "I didn't see anything.")
	RandomVoiceOver(NPC, Spawn)
end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
	end
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why don't you give me a test?", "dlg_9_2")
	AddConversationOption(conversation, "I don't need to take this from you. Good bye.")
	StartConversation(conversation, NPC, Spawn, "Did you hear that, boys? This runt wants to join our gang! HA HA HA HA! You couldn't fight your way out of a wet parchment bag let alone join us. HA HA HA! We keep people safe inside the city districts!  You're better off paying us for protection, runt.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    OfferQuest(NPC, Spawn, JoiningtheGang)
	AddConversationOption(conversation, "Okay, I'll be back when they're dead.", "dlg_9_3")
	StartConversation(conversation, NPC, Spawn, "A test, huh? Yeah ... hey, boys ... let's give this runt a bit of a test. Okay, here's your test: Go deeper in this place and find some of the lackeys who hang around the raiders. Kill some of them and maybe you can work for us.")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Don't worry about it.", "dlg_9_4")
	StartConversation(conversation, NPC, Spawn, "Don't even bother coming back if they ain't!")
end

function dlg_17_1(NPC, Spawn)
	SetStepComplete(Spawn, JoiningtheGang, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll check back.")
	StartConversation(conversation, NPC, Spawn, "Crispin already heard. Hpmh ... You got lucky, I guess. Either way, those Raiders won't bother our clients in the Court anymore. I don't know if I should let you join our gang ... let me think about it.")
end