--[[
    Script Name    : SpawnScripts/Freeport/Qalantir.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 07:07:29
    Script Purpose : 
                   : 
--]]

local TheFallenRetriever = 5274

function spawn(NPC)
AddTimer(NPC, 15000, "idle_animation")
end

function idle_animation(NPC, Spawn)
PlayAnimation(NPC, 12030)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "qalantir/fprt_north/qalantir000.mp3", "", "hail", 1831944528, 4173356815, Spawn)
	if GetQuestStep(Spawn, TheFallenRetriever) == 2 then
	AddConversationOption(conversation, "I have some questions about Horatio. ", "Option1")
	elseif GetQuestStep(Spawn, TheFallenRetriever) == 4 then
	AddConversationOption(conversation, "I have filled all the vials that you requested.", "Option8")
	end
	AddConversationOption(conversation, "I am just passing through.")
	StartConversation(conversation, NPC, Spawn, "Good day! How can I help you, my friend? Do you stand before me in search of knowledge?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir001.mp3", "", "yes", 22442081, 824276178, Spawn)
	AddConversationOption(conversation, "I found a letter that was his.", "Option2")
	AddConversationOption(conversation, "I've made a terrible mistake, please forgive me.")
	StartConversation(conversation, NPC, Spawn, "What do you know about Horatio? Speak quickly or you shall lose your tongue!")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir002.mp3", "", "", 911234612, 2684201405, Spawn)
	AddConversationOption(conversation, "What was he doing?", "Option3")
	AddConversationOption(conversation, "That is unfortunate, I guess there is nothing left to talk about.")
	StartConversation(conversation, NPC, Spawn, "How do you know this letter was Horatio's? He was on a very important mission for the Academy, and it has been months since we heard from him. Because of the difficulty of the task he was attempting to complete, we believe he is dead.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir003.mp3", "", "", 4124164547, 3723800907, Spawn)
	AddConversationOption(conversation, "What special ingredient?", "Option4")
	AddConversationOption(conversation, "I think I know too much, I am going to leave you alone now.")
	StartConversation(conversation, NPC, Spawn, "Horatio always said he aspired to be a student here.  I told him that if the opportunity arose, I'd be the first to suggest his name to our high council. Then, one day, I needed a special ingredient for some healing elixirs I was researching... ")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir004.mp3", "", "", 3125871471, 3913445858, Spawn)
	AddConversationOption(conversation, "Where is this diseased ratonga blood found?", "Option5")
	AddConversationOption(conversation, "Well maybe he will come back with your samples soon. ")
	StartConversation(conversation, NPC, Spawn, "Although it is frowned upon by some residents, we started sending agents down to the Thieves' Way to collect samples of diseased ratonga blood. It is believed that the blood of these forsaken creatures can be used to help the dying. I was certain that if Horatio could bring me back some samples, I could present his findings to our alliance. Surely then they'd allow him to study as an apprentice!")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir005.mp3", "", "", 2816950517, 2738391655, Spawn)
	AddConversationOption(conversation, "I will seek out these blood samples.", "Option6")
	AddConversationOption(conversation, "I hope you find someone to do that. Thanks for speaking to me.")
	StartConversation(conversation, NPC, Spawn, "The majority of our samples come from the Thieves' Way. This is where I sent Horatio to complete his mission. However, it has been months since anyone has heard from him. Seeing this note you found, I'm sure that he's dead. As unfortunate as his passing is, we still need these samples to continue our research. Horatio must not die in vain!")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "qalantir/fprt_north/qalantir006.mp3", "", "", 2544647659, 725644604, Spawn)
	AddConversationOption(conversation, "I will take my chances.", "Option7")
	AddConversationOption(conversation, "Maybe you are right, I don't think I want to go back there.")
	StartConversation(conversation, NPC, Spawn, "That is great news. If you return with the samples of blood I request, I shall compensate you for your efforts. I must warn you though, venturing deep into these sewers can be very dangerous. ")
end

function Option7(NPC, Spawn)
    SetStepComplete(Spawn, TheFallenRetriever, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "qalantir/fprt_north/qalantir007.mp3", "", "", 141380966, 627441505, Spawn)
	AddConversationOption(conversation, "I will return when I have collected the samples.")
	StartConversation(conversation, NPC, Spawn, "Collect as many vials of diseased ratonga blood as you can. Return to me when you have filled these vials and I will work out some kind of reward for your troubles.")
end

function Option8(NPC, Spawn)
    SetStepComplete(Spawn, TheFallenRetriever, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "qalantir/fprt_north/qalantir008.mp3", "", "", 3674155152, 1504551197, Spawn)
	AddConversationOption(conversation, "Thank you. ")
	StartConversation(conversation, NPC, Spawn, "I'm glad to see your determination to assist us with our research. Please take this as a symbol of my appreciation.")
end






function respawn(NPC)
	spawn(NPC)
end