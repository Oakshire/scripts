--[[
    Script Name    : SpawnScripts/Commonlands/OverseerMelicinn.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 07:02:56
    Script Purpose : 
                   : 
--]]

local ZarvonnsLegacy = 446

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1051.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1051.mp3", "", "", 0, 0, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1051.mp3", "", "", 0, 0, Spawn)
	end
	 if GetQuestStep(Spawn, ZarvonnsLegacy) == 5 then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I don't take well to threats, mage.", "Option1")
	StartConversation(conversation, NPC, Spawn, "D'Verin is a stupid little child with small aspirations.  She also is a liar as well.  I have watched you since you entered my tower and know what transpires between you and her.  She sent you to me so that I would kill you, as I do with any unwelcome guests.  Count yourself fortunate that I am in immediate need of someone like you.")
	elseif GetQuestStep(Spawn, ZarvonnsLegacy) == 7 then
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Hmm... How do I know that you speak the truth?", "Option8")
    StartConversation(conversation, NPC, Spawn, "Yes, I can almost smell Zarvonn's weaving on it.  Let me apply it to the stone... YES!  This is exactly what I was expecting... I can see the shimmering of the veil separating us from him.")
end
end
   


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I see.  Very well, then... you said you had need of me?", "Option3")
	StartConversation(conversation, NPC, Spawn, "And I don't have much patience for those who are insolent.  D'Verin is planning on creating a spell from the skulls of those undead I planted amongst the orcs' dead.  What she doesn't know is that the enchantments bestowed upon those skulls weren't placed by Zarvonn.  Instead, they were placed by me with the intent to kill her and her alone.  I wouldn't waste that amount of time on you, understand?  This will be the only time I warn you.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayAnimation(NPC, 11882)
	AddConversationOption(conversation, "I don't understand. What do you mean by ''transposed''?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Yes... from your conversation with D'Verin, it seems you are seeking the great Necromancer Zarvonn.  This is my same goal, and after twenty years, I believe I may have found a way to locate where he transposed himself.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "And I assume this magic is where I come in, correct?", "Option5")
	StartConversation(conversation, NPC, Spawn, "When Zarvonn disappeared over a century and a half ago, I believe he never actually left.  I think he's actually still here, except frozen in time, by his own doing.  I believe that I can finally unlock the mystery of this rock, which I believe to be the gateway to where he's at.  All I need is the smallest trace of Zarvonn's magic that was used around the time he shifted away. And now, I have finally tracked down where to get it.")
end


function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll agree to do this, but I demand to know why.", "Option6")
	AddConversationOption(conversation, "I don't trust your willingness to work with me.  I'll have to think about this one.")
	StartConversation(conversation, NPC, Spawn, "I do not make deals with people, but I am in the unique situation that I am forced to do so.  If you gather this residual trace of his magic for my incantation, I will make an effort not to turn you into something unnatural.  Are we agreed?")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Hmmm... I see... very well.  What do you need?", "Option7")
	StartConversation(conversation, NPC, Spawn, "It's simple, really.  I cannot trust my assistant, for she has been trying to murder me for as long as I can remember.  I also cannot leave this stone unattended until the final part of the ritual is complete.  And finally... I don't know what will be waiting for me on the other side of this portal.  If you come back alive, then I'll know it's safe... then finally reap the rewards of my diligence.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, ZarvonnsLegacy, 5)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will be back when I have its residue.")
	StartConversation(conversation, NPC, Spawn, "In the center of the Commonlands is a graveyard that is almost as old as this tower.  I have seen a ghost within that graveyard that has been bound to this world for as long as the graveyard has been there.  I believe that ghost was one of Zarvonn's first undead to be raised.  Patiently wait for it to rise, destroy it, and bring back its ectoplasmic residue.  With that residue, I can examine the magic used to raise it... which might allow me to unlock the mystery of this stone.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, ZarvonnsLegacy, 7)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll see you again, Melicinn.")
	StartConversation(conversation, NPC, Spawn, "How dare you question me!?  Look into the stone yourself if you disbelieve.  Anyone of your associates will view what you view.  Now... step through and you will find where Zarvonn's abode is.  If you return... well, then I will know it is safe to continue my research on the other side, won't I?  Good luck, adventurer.")
end



function respawn(NPC)

end