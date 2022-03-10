--[[
	Script Name	: SpawnScripts/Graystone/Snowboot.lua
	Script Purpose	: Snowboot <Armorsmith>
	Script Author	: Dorbin
	Script Date	: 2022.03.07
	Script Notes	: 
--]]


local Pickup = 5501

function spawn(NPC)
SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")    
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if math.random(1, 100) <= 80 then
         choice = math.random(1,3)
            if choice ==1 then
            PlayFlavor(NPC, "", "", "square", 0, 0, Spawn)
            elseif choice ==2 then
            PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)            
            else
            PlayFlavor(NPC, "", "", "woo", 0, 0, Spawn)
            
            end
    end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/armorsmith_snowboot/qey_village03/armorsmithsnowboot.mp3", "", "", 3584987348, 1438770677, Spawn)
	if GetQuestStep(Spawn,Pickup)==1 then
	AddConversationOption(conversation, "I'm here to pick up Watchman Fiercecry's suit of armor.","Armor")
    end	
	AddConversationOption(conversation, "Sorry to disturb you!")
	StartConversation(conversation, NPC, Spawn, "Aye, what is it? I've got to be fitting this elven lass, and I haven't got all day! Come on, out with it!")
end

function Armor(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/armorsmith_snowboot/qey_village03/armorsmithsnowboot000.mp3", "", "", 2002270290, 3759394726, Spawn)
	AddConversationOption(conversation, "Fiercecry is apart of the Graystone Watch. Don't you want him protected?","Armor2")
	AddConversationOption(conversation, "Please? I am just trying to do a job.","Armor3")
	AddConversationOption(conversation, "I'm sure 'Old Snowboot' helps those who helps others.","Armor2")
	StartConversation(conversation, NPC, Spawn, "Oh, ya are, are you? Why should I believe you? I can't let every last soul run off with me full suit of armor just because they say they are here to pick it up for someone!  Go on! Give me a reason! Why should I give it to you?! Out with it already! Why?!")
end

function Armor2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/armorsmith_snowboot/qey_village03/armorsmithsnowboot001.mp3", "", "", 3372293691, 3262827310, Spawn)
	AddConversationOption(conversation, "I'll deliver it right away.","ArmorDone")
	StartConversation(conversation, NPC, Spawn, "Blast my good nature!  Alright! Just a momment while I get it for ya. Now, don't let me hear about this suit going missing!")
end

function Armor3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    PlayAnimation(Spawn, 10844)
	PlayFlavor(NPC, "voiceover/english/armorsmith_snowboot/qey_village03/armorsmithsnowboot001.mp3", "", "", 3372293691, 3262827310, Spawn)
	AddConversationOption(conversation, "I'll deliver it right away.","ArmorDone")
	StartConversation(conversation, NPC, Spawn, "Blast my good nature!  Alright! Just a momment while I get it for ya. Now, don't let me hear about this suit going missing!")
end

function ArmorDone(NPC,Spawn)
  	FaceTarget(NPC, Spawn)  
    SetStepComplete(Spawn, Pickup, 1)
end
