--[[
    Script Name    : SpawnScripts/Commonlands/TiffSqueelunkle.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.06 02:01:07
    Script Purpose : 
                   : 
--]]

local SmugglersSecrets = 452
local CratesOnTheNerves = 453 


function spawn(NPC)
ProvidesQuest(NPC, SmugglersSecrets)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, SmugglersSecrets) and not HasCompletedQuest(Spawn, SmugglersSecrets) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1019.mp3", "", "clap", 0, 0, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "What are you going on about?", "dlg1")
    AddConversationOption(conversation, "Perfect fit for what, little bit?", "dlg1")
    AddConversationOption(conversation, "I don't think so.")
    StartConversation(conversation, NPC, Spawn, "You are a perfect fit!  No doubt of that cog being wrong sized, nuh uh.")
    elseif HasQuest(Spawn, SmugglersSecrets) and GetQuestStep(Spawn,  SmugglersSecrets) == 1  then
    dlg5(NPC, Spawn)
    elseif HasQuest(Spawn, SmugglersSecrets) and GetQuestStep(Spawn, SmugglersSecrets) == 2 or GetQuestStep(Spawn, SmugglersSecrets) == 4 or GetQuestStep(Spawn, CratesOnTheNerves) == 3 then
    PlayFlavor(NPC, "", "Quick!  Do as I asked before they catch on to us!", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn, SmugglersSecrets) == 3 then
    dlg7(NPC, Spawn)
    elseif GetQuestStep(Spawn, SmugglersSecrets) == 5 then
    dlg16(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, SmugglersSecrets) and not HasQuest(Spawn, CratesOnTheNerves) then
     conversation = CreateConversation()
	AddConversationOption(conversation, "Oh, good.  More work.", "dlg2_1")
    AddConversationOption(conversation, "And there's something I can do, right?", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Now we can track the scroll to 'elp us learn who is involved, but there's more gears turnin' in this clockwork then meets the eye.")
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 1 then
	conversation = CreateConversation()
	AddConversationOption(conversation, "Sounds easy enough.")
	StartConversation(conversation, NPC, Spawn, "Get me five wisp embers to make the potion, and we'll be all set.")
	elseif GetQuestStep(Spawn, CratesOnTheNerves) == 2 then
	  dlg2_3(NPC, Spawn)
end
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


function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 1)
conversation = CreateConversation() 
AddConversationOption(conversation, "I'll see what I can find.", "dlg6")
AddConversationOption(conversation, "I'm not promising anything.")
StartConversation(conversation, NPC, Spawn, "Now wear this outfit so they will not suspect you.  They are the clothes of the last courier to have come through.  Careful, they're worn through in parts.")
end

function dlg6(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Oh, I will!")
StartConversation(conversation, NPC, Spawn, "Make sure to be wearing the courier costume when you snoop about at the smuggler's outpost, ".. GetName(Spawn) .. ".")
end


function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "", "", 0, 0, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "The Blackshield entrance exam must be hands on.", "dlg8")
AddConversationOption(conversation, "I found I am a natural at spying.", "dlg9")
StartConversation(conversation, NPC, Spawn, "Back all ready!?  What 'cha find?")
end

function dlg8(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "They thought I was the courier and gave me this scroll.", "dlg10")
StartConversation(conversation, NPC, Spawn, "Har, har!  Not the thickest planks of the boat, that's fer sure!")
end

function dlg9(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "They thought I was the courier and gave me this scroll.", "dlg10")
StartConversation(conversation, NPC, Spawn, "I knew it!  What have you for me?")
end

function dlg10(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Do with it?  Read it!  Can't you open it?", "dlg11")
StartConversation(conversation, NPC, Spawn, "Oh, what luck!  I hadn't expected this.  Too good!  What are you to do with it?")
end

function dlg11(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Deliver it to someone at Pride Lake.", "dlg12")
StartConversation(conversation, NPC, Spawn, "No.  It's magically sealed, and if broken the scroll will combust.  What did they want you to do with it?")
end


function dlg12(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "What's tracking powder?", "dlg14")
AddConversationOption(conversation, "You want me to continue acting as courier?", "dlg13")
StartConversation(conversation, NPC, Spawn, "Too good, 'ndeed!  'Ere let me sprinkle it with tracking powder, and then deliver it.")
end


function dlg13(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "That's useful.", "dlg15")
StartConversation(conversation, NPC, Spawn, "Yes!  And now we can track the scroll to its final destination.")
end

function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "That's useful.", "dlg15")
StartConversation(conversation, NPC, Spawn, "A magical concoction that will allow us to track the scroll to its destination.")
end

function dlg15(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 3)
conversation = CreateConversation() 
AddConversationOption(conversation, "I'm going.")
StartConversation(conversation, NPC, Spawn, "Quite, quite.  Now 'urry along, less we miss our chance!")
end

function dlg16(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1019.mp3", "", "", 0, 0, Spawn)
conversation = CreateConversation() 
AddConversationOption(conversation, "Don't break a gasket.  I gave the scroll to the dark elf that showed up.", "dlg17")
StartConversation(conversation, NPC, Spawn, "Do tell, do tell!  What 'appened?")
end

function dlg17(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, SmugglersSecrets, 5) 
conversation = CreateConversation() 
AddConversationOption(conversation, "Thank you.")
StartConversation(conversation, NPC, Spawn, "Excellent!  'Ere.  Take this for your troubles.")
end

function dlg2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I hear a task coming on.", "dlg2_2")
	AddConversationOption(conversation, "Let me guess, i can get you some.", "dlg2_2")
	StartConversation(conversation, NPC, Spawn, "Aye, there is!  What's bein' shipped, where?  What dark elves wanna help others?  Trackin' the items is key!  'Cept, it's too bad I'm out of the trackin' powder.")    
end

function dlg2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can do that.", "offer2")
	AddConversationOption(conversation, "I'm gonna pass on that one")
	StartConversation(conversation, NPC, Spawn, "Sassy!  Talk'n like that is how I lost my tongue, you know.  At sea, they don't take kindly to such.  Wait!  You could get me sa' more.  Good idea!")
end



function dlg2_3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    AddConversationOption(conversation, "I do.", "dlg2_4")
    AddConversationOption(conversation, "I have not let you down.")
	StartConversation(conversation, NPC, Spawn, "I 'ave the potion all set.  You've got the wisp embers?")
end

function dlg2_4(NPC, Spawn)
    SetStepComplete(Spawn, CratesOnTheNerves, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yeah, yeah. I got it.")
	AddConversationOption(conversation, "Dawdle...heh heh.")
	StartConversation(conversation, NPC, Spawn, "Good, good!  There we go.  Now take this pouch of trackin' powder, and sprinkle it on any of 'em empty crates that are in the Blackshield Smugglers' outpost.  'Urry now.  Don't dawdle!")
end




function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, SmugglersSecrets)
end

function offer2(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, CratesOnTheNerves)
end


function respawn(NPC)
 spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
        if not HasQuest(Spawn, SmugglersSecrets) then
    ProvidesQuest(NPC, SmugglersSecrets)
	PlayFlavor(NPC, "", "Psst!  You there!  C'mere and give me a hand.", "", 1689589577, 4560189, Spawn)
end
   end
	


function LeaveRange(NPC, Spawn)

end

