--[[
    Script Name    : SpawnScripts/CryptBetrayal/TorgBramblehair.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.30 10:10:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    --if not HasQuest(Spawn, ) and not HasCompletedQuest(Spawn, ) then
	AddConversationOption(conversation, "Spike's a minotaur?", "Option1")
	AddConversationOption(conversation, "This sounds like a job for someone else.")
	StartConversation(conversation, NPC, Spawn, "Have you seen a minotaur about this tall with horns?  Well, they're all about this tall with horns. Try again, Torg ... Have you seen Spike?")
	--elseif HasQuest(Spawn, )
	
	AddConversationOption(conversation, "No, I haven't seen him.")
	--if GetQuestStep(Spawn, ) == 2 then
	AddConversationOption(conversation, "I've killed ten crypt tempests so he should come out soon.", "Option5")
	StartConversation(conversation, NPC, Spawn, "Spike! Where are you?  Have you seen him?")
end

function respawn(NPC)
	spawn(NPC)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()


	AddConversationOption(conversation, "You want me to look for Spike?", "Option2")
		AddConversationOption(conversation, "Anyone who makes a minotaur a pet needs more help than I can give.")
	StartConversation(conversation, NPC, Spawn, "Spike's not like the other minotaurs, nooooo, sir!  I raised him by hand, my own self! But he's run off and got himself in a real mess this time.  Can you help me?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How can I catch him?", "Option3")
	AddConversationOption(conversation, "I'm afraid I can't help you.")
	StartConversation(conversation, NPC, Spawn, "Aw, would ya?  Spike's my pal, and he's too small to last long in this place.  I always tell him not to play down here, but you know minotaurs -- they're kind of bull-headed.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can take care of this.  You're sure Spike will come back?", "offer")
	AddConversationOption(conversation, "I'm not interested in this.")
	StartConversation(conversation, NPC, Spawn, "I'm thinking he's too scared to come back, with all them undead minotaurs and things in here.  If you killed ten of them nasty crypt tempests, he'll come back out on his own.  That would do the trick.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "He's Here?")
	StartConversation(conversation, NPC, Spawn, "There he is!  Spike! Here, boy! I said, here, boy! Spike!")
end


function offer(NPC, Spawn)

end

