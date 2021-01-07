--[[
    Script Name    : SpawnScripts/Commonlands/TiffSqueelunkle.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.06 02:01:07
    Script Purpose : 
                   : 
--]]



function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1019.mp3", "", "clap", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What are you going on about?", "dlg1")
    AddConversationOption(conversation, "Perfect fit for what, little bit?", "dlg1")
    AddConversationOption(conversation, "I don't think so.")
    StartConversation(conversation, NPC, Spawn, "You are a perfect fit!  No doubt of that cog being wrong sized, nuh uh.")
end

function dlg1(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()  
  AddConversationOption(conversation, "I have no doubt.", "dlg2")
  AddConversationOption(conversation, "Anyway, as you were saying...")
  StartConversation(conversation, NPC, Spawn, "I have need of you!  I'm a member of the Seafury Buccaneers, and we... I know what you're thinking, but I am very useful at sea!  Any mechanical whos-its break down durin' travel and Tiff is on it like stink on a sewer rat.")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 PlayAnimation(NPC, 11882)
 conversation = CreateConversation() 
 AddConversationOption(conversation, "Wait!  What am I doing?", "dlg3")
 AddConversationOption(conversation, "I never agreed to anything.")
 StartConversation(conversation, NPC, Spawn, "Uh... Oh, yes.  You're useful 'n smart!  we're to investigate these smugglers 'ere and see what and who is behind their recent growth in number 'n purse. 'Nfringin' on our teritry, they are.  I have the clothes of a courier 'ere for you to wear when you go in.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
 AddConversationOption(conversation, "You have two hands.", "dlg4")
  AddConversationOption(conversation, "So what should I be looking for?", "offer")
 AddConversationOption(conversation, "You need to find someone else.")
 StartConversation(conversation, NPC, Spawn, "Huh?  Keep up 'ere!  I need you to go to the smuggler's camp.  I'll reward you, naturally.  I promise!  Break my gears, and curse my mind!  It's just that I've been spotted by 'em several times snoopin' around 'n if I get snagged again they'll sure as Prexxus take my other hand, too!")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Uh, kaaay.  So what should I be looking for?", "offer")
 AddConversationOption(conversation, "Wow.  You're confused.")
 StartConversation(conversation, NPC, Spawn, "Do not distract me from the matter.  You're the one that wanted to help me!")
end







function respawn(NPC)
 spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Psst!  You there!  C'mere and give me a hand.", "", 1689589577, 4560189, Spawn)  
end
	

function LeaveRange(NPC, Spawn)

end

