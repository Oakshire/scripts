--[[
    Script Name    : SpawnScripts/Commonlands/SpiritofRaegnir.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 09:02:32
    Script Purpose : 
                   : 
--]]

local AnOrcishTrinket = 5254

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, AnOrcishTrinket) then
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "My pain is eternal.", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "Rest comes not.", "", 0, 0, Spawn)
    else
     PlayFlavor(NPC, "", "It is missing.", "", 0, 0, Spawn) 
    end
elseif GetQuestStep(Spawn, AnOrcishTrinket) == 5 then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I come with a gift. [show him the blade and jewels]", "Option1")
	StartConversation(conversation, NPC, Spawn, "Why do you bother me?")
end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Is that why your spirit still lingers? You wanted your blade?", "Option2")
	StartConversation(conversation, NPC, Spawn, "My blade! I thought I had lost it in that blasted city.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How?", "Option3")
	StartConversation(conversation, NPC, Spawn, "No. I am unable to rest because I was betrayed.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "...", "Option4")
	StartConversation(conversation, NPC, Spawn, "By my own people! I got the crazy idea in my head that we could sneak into Freeport at night and take out a guard captain. The captain's head would be merely a worthless trophy, we had dozens already. But the fact that we stole it from his very shoulders while he slept... THAT was to be the real prize. But it all went wrong...")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What trap?", "Option5")
	StartConversation(conversation, NPC, Spawn, "No one knew of our plan that wasn't of orc blood. Orcs aren't known for their smarts, but we don't talk. Some might, sure, if they were captured. But I specifically toned down our presence so as to avoid any capture. And we did avoid it. We had not a single orc unaccounted for in two weeks, completely unheard of. But the Militia had set a trap for us.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "...", "Option6")
	StartConversation(conversation, NPC, Spawn, "We crept into the house of the guard captain. We had gone not three steps when there came a terrible crashing from all around us. The guard in his bed? Probably just some pillows under the covers. They had set the entire house up as a trap, and it worked. Every last one of us they got, crushed under that falling mess of stone...")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That story is not how I heard it.", "Option7")
	StartConversation(conversation, NPC, Spawn, "Who knew? Not a single orc captured or missing. And ONLY us orcs knew. One of them told the Militia... I bet they gave him enough gold to keep him happy for a day or two and then killed him. Why not? He's just an orc, ya know? And a traitor at that. Betrayal hurts... more than any wound a sword or axe can give.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "From what I heard, orcs stationed in the Commonlands thought that they could help you accomplish your mission if they fired their catapults into the city. It would seem they hit the house of the captain, killing him and your men.", "Option8")
	StartConversation(conversation, NPC, Spawn, "What do you mean?")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes.", "Option9")
	StartConversation(conversation, NPC, Spawn, "... they hit the house of the guard captain?")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Your orcs did not betray you.", "Option10")
	StartConversation(conversation, NPC, Spawn, "Hah hah hah. So we sneak into Freeport to kill some guard captain, get killed, and the poor guy dies anyway? Hah hah hah! Oh, the world works in interesting ways.")
end

function Option10(NPC, Spawn)
    SetStepComplete(Spawn, AnOrcishTrinket, 5)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You are welcome.")
	StartConversation(conversation, NPC, Spawn, "No. No they did not. You bring me my weapon and my peace. I think I will leave now. Thank you.")
	PlayAnimation(NPC, 121) -- "bow" animation
end



  

function respawn(NPC)

end

