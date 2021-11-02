--[[
    Script Name    : SpawnScripts/CryptBetrayal/TorgBramblehair.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.30 10:10:41
    Script Purpose : 
                   : 
--]]

local LittleLostMinotaur = 5387 -- Little Lost Minotaur quest

function spawn(NPC)
ProvidesQuest(NPC, LittleLostMinotaur)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn, LittleLostMinotaur) and not HasCompletedQuest(Spawn, LittleLostMinotaur) then
    PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair001.mp3", "", "", 1160327358, 2537496149, Spawn)
	AddConversationOption(conversation, "Spike's a minotaur?", "Option1")
	AddConversationOption(conversation, "This sounds like a job for someone else.")
	StartConversation(conversation, NPC, Spawn, "Have you seen a minotaur about this tall with horns?  Well, they're all about this tall with horns. Try again, Torg ... Have you seen Spike?")
	elseif HasQuest(Spawn, LittleLostMinotaur) then
	AddConversationOption(conversation, "No, I haven't seen him.")
	if GetQuestStep(Spawn, LittleLostMinotaur) == 2 then
	AddConversationOption(conversation, "I've killed ten crypt tempests so he should come out soon.", "Option5")
	end
	PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair006.mp3", "", "", 360910423, 1997413636, Spawn)
	StartConversation(conversation, NPC, Spawn, "Spike! Where are you?  Have you seen him?")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair002.mp3", "", "", 3726549634, 4122557241, Spawn)
	AddConversationOption(conversation, "You want me to look for Spike?", "Option2")
	AddConversationOption(conversation, "Anyone who makes a minotaur a pet needs more help than I can give.")
	StartConversation(conversation, NPC, Spawn, "Spike's not like the other minotaurs, nooooo, sir!  I raised him by hand, my own self! But he's run off and got himself in a real mess this time.  Can you help me?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair003.mp3", "", "", 2401579402, 3167198059, Spawn)
	AddConversationOption(conversation, "How can I catch him?", "Option3")
	AddConversationOption(conversation, "I'm afraid I can't help you.")
	StartConversation(conversation, NPC, Spawn, "Aw, would ya?  Spike's my pal, and he's too small to last long in this place.  I always tell him not to play down here, but you know minotaurs -- they're kind of bull-headed.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair004.mp3", "", "", 3646313566, 3514709231, Spawn)
	AddConversationOption(conversation, "I can take care of this.  You're sure Spike will come back?", "offer")
	AddConversationOption(conversation, "I'm not interested in this.")
	StartConversation(conversation, NPC, Spawn, "I'm thinking he's too scared to come back, with all them undead minotaurs and things in here.  If you killed ten of them nasty crypt tempests, he'll come back out on his own.  That would do the trick.")
end


function Option5(NPC, Spawn)
    SetStepComplete(Spawn, LittleLostMinotaur , 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/torg_bramblehair/qey_catacomb03/torg_bramblehair007.mp3", "", "", 840005073, 714277153, Spawn)
	AddConversationOption(conversation, "He's Here?")
	StartConversation(conversation, NPC, Spawn, "There he is!  Spike! Here, boy! I said, here, boy! Spike!")
	local Spike = SpawnMob(NPC, 2010062, false, -27.7625, 6.91103, -14.8451, 125.266) -- spawns "Spike"
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, LittleLostMinotaur)
end

