--[[
	Script Name	: SpawnScripts/QeynosHarbor/ShandaTierbold.lua
	Script Purpose	: Shanda Tierbold 
	Script Author	: Dorbin
	Script Date	: 2022.06.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Associated with Nettlevill Quest "Letter from the Boss" https://eq2.zam.com/db/quest.html?eq2quest=825320e98cc4a4aa943eef2e924c4add#Wiki
    Note: Fabricated dialog for quest
--]]

local delivery = 5586

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 2, "InRange", "LeaveRange")
    ProvidesQuest(NPC,delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "", "", "no",0, 0, Spawn)
end

function LeaveRange(NPC, Spawn)
end


  function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/shanda_tierbold/qey_harbor/shandatierbold000.mp3", "", "shakefist",3116352069, 1617706288, Spawn)
    local conversation = CreateConversation()
    if not HasQuest(Spawn,delivery) and not HasCompletedQuest(Spawn, delivery) and GetFactionAmount(Spawn,11) >=1 then
	AddConversationOption(conversation, "What is behind that door anyway?", "Door")
	end	
    if HasCompletedQuest(Spawn, delivery) and GetFactionAmount(Spawn,11) >=1 then
	AddConversationOption(conversation, "Hey, I did a job for your boss.  Can I enter now?","Boss")
    end        
	AddConversationOption(conversation, "Alright!  I didn't want in there anyway.")
	StartConversation(conversation, NPC, Spawn, "Stop right there! No one goes through this door without explicit permission.")
end 

  function Door(NPC, Spawn)
	FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "", "", "glare",0, 0, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Well, how can I get in touch with your boss?  Perhaps I have business in places like this.","Quest1")
	AddConversationOption(conversation, "Fine fine.  I'm going.")
	StartConversation(conversation, NPC, Spawn, "That is for me and the boss to know and for you to scram!  I'm not allowed to let anyone in here that the boss doesn't authorize.  You best be off!")
end  

  function Quest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "", "", "tapfoot",0, 0, Spawn)
   local conversation = CreateConversation()
	AddConversationOption(conversation, "How about I take the letter for you?","StartQuest")
	AddConversationOption(conversation, "Fine fine.  I'm going.")
	StartConversation(conversation, NPC, Spawn, "In that case, you won't find him here.  If you are truely interested I have a letter marked for him that I need delivered.  I would do it myself, but my first duty is to stopping riffraff from entering this door.")
end  

function StartQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,delivery)
    end
    
  function Boss(NPC, Spawn)
	FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "", "", "chuckle",0, 0, Spawn)
   local conversation = CreateConversation()
	AddConversationOption(conversation, "But-","But")
	AddConversationOption(conversation, "Fine fine.  I'm going.")
	StartConversation(conversation, NPC, Spawn, "Haha!... no.")
end  

  function But(NPC, Spawn)
	FaceTarget(NPC, Spawn)
     PlayFlavor(NPC, "", "", "glare",0, 0, Spawn)
   local conversation = CreateConversation()
	AddConversationOption(conversation, "Fine fine.  I'm going.")
	StartConversation(conversation, NPC, Spawn, "I haven't caught wind of your name from the boss.  At least not with this place in mind.  Now, beat it!")
end    