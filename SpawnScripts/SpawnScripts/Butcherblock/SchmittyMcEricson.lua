--[[
    Script Name    : SpawnScripts/Butcherblock/SchmittyMcEricson.lua
    Script Author  : jakejp
    Script Date    : 2018.05.29 10:05:02
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"
local SchmittysSandals = 266

function spawn(NPC)
	ProvidesQuest(NPC, SchmittysSandals)
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	if HasQuest(Spawn, SchmittysSandals) and GetQuestStep(Spawn, SchmittysSandals) < 6 then
		if GetQuestStep(Spawn, SchmittysSandals) == 1 then
			--on 1st part of quest
			Say(NPC, "Did you get everything on the list? I can't make me new sandals until ye come back with all the parts I need.")
		elseif GetQuestStep(Spawn, SchmittysSandals) == 2 then
			-- on 2nd part of quest
			Say(NPC, "Did you get everything on the list? I can't make me new sandals until ye come back with all the parts I need.")
		elseif GetQuestStep(Spawn, SchmittysSandals) == 3 then
			--on 3rd part of quest
			Say(NPC, "Did you get everything on the list? I can't make me new sandals until ye come back with all the parts I need.")
		elseif GetQuestStep(Spawn, SchmittysSandals) == 4 then
			--on 4th part of quest
			--PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "", 0, 0, Spawn)
			AddConversationOption(conversation, "Right, anyways I brought back all the parts you need.", "dlg_2_1")
			StartConversation(conversation, NPC, Spawn, "Phew! Something smells fishy! Oh, it's you... Sorry.")
		elseif GetQuestStep(Spawn, SchmittysSandals) == 5 then
			--on 5th part of quest
                        local time = GetPlayerHistory(Spawn, HISTORY.BB_SCHMITTYSANDALS_STEP5_WAIT) + 300
			if os.time() < time then
				Say(NPC, "Sorry, friend. I still haven't finished the sandals. Give me a few more minutes, please.")
			elseif os.time() > time then
		        SetStepComplete(Spawn, SchmittysSandals, 5)
                        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", "", "", 0, 0, Spawn)
		        AddConversationOption(conversation, "Sounds like a win-win situation to me!")
		        StartConversation(conversation, NPC, Spawn, "Here you are. Some of me best work! Thanks again for your help. I probably never would have found me old sandals were it not fer you.")
			end
			
		end
        elseif HasCompletedQuest(Spawn, SchmittysSandals) then
                FaceTarget(NPC, Spawn)
                Say(NPC, "I'm so happy I found me old sandals, I could kick them off in a fit of joy.")

        elseif CanReceiveQuest(Spawn, SchmittysSandals) then
                AddConversationOption(conversation, "I beg your pardon? I was just saying hello.", "Option1")
	        StartConversation(conversation, NPC, Spawn, "Oh, what? You wanna fight er somethin'?")
        else
                local choice = math.random(1,2)
                if choice == 1 then
                        Say(NPC, "Whoops! I almost hit you with my pole. What a tragedy THAT would have been!")
                elseif choice == 2 then
                        Say(NPC, "You don't know me. You think you're better than me?!")
                end
        end	
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Are the fish not biting?", "Option2")
	AddConversationOption(conversation, "Don't blame me. Bye!")
	StartConversation(conversation, NPC, Spawn, "Ah, jeez. I'm sorry, friend. I didn't mean ta come at ya like that. You see, I'm just a poor fisherman who's fallen on hard times and is lookin' to blame everyone else for me problems besides meself.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How did you lose them?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Oh no, the fishing is great. It's just... well, it may seem silly ta you but... I've gone and lost me sandals.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I see... So, can I help you find them?", "Option4")
	StartConversation(conversation, NPC, Spawn, "I dunno! One moment I'm standing here, doin' my job. You know, fishing and making sure the ale hasn't been poisoned. Next thing I know, I'm looking down at my bare feet. Twas the strangest thing.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright. What do you need to make the new sandals?", "GiveSchmittysSandals")
	AddConversationOption(conversation, "All this talk of ale and fish has gotten me hungry. I must go.")
	StartConversation(conversation, NPC, Spawn, "I appreciate the offer friend, but I've looked all over for 'em wit no luck at all. You know... I think I could use your help! I'll just make me some new sandals! Haha!")
end

function GiveSchmittysSandals(NPC, Spawn)
	OfferQuest(NPC, Spawn, SchmittysSandals)
end


function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Off I go!")
	StartConversation(conversation, NPC, Spawn, "Excellent! All the things I need can be found around this bay. You shouldn't have much trouble finding them.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Remarkable... Though, what am I going to do with all these odd animal parts?", "dlg_2_2")
		AddConversationOption(conversation, "Actually, I can believe it. Here are the parts you asked for.")
	StartConversation(conversation, NPC, Spawn, "Huh? Ohhhh! For the sandals. Right, right. Well, yer not gonna believe this, but I found me ol' sandals! Turns out they were just buried under a pile o' sand! Haha!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yeah, why don't you make the sandals anyway. I could always use them.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Well, no sense in lettin' it all go ta waste now, right?")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "This is going to be a bit. Isn't it?", "dlg_2_4")
	StartConversation(conversation, NPC, Spawn, "That's a great idea! Now let's see here. This thread goes through that hole here...")
end

function dlg_2_4(NPC, Spawn)
        SetStepComplete(Spawn, SchmittysSandals, 4)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "And that connects there... Aye. Come back in a few minutes. I'll have your sandals for you then.")
        

end

function StillWorking(NPC, Spawn)
       FaceTarget(NPC, Spawn)
       Say(NPC, "Sorry, friend. I still haven't finished the sandals. Give me a few more minutes, please.")

end
