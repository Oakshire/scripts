--[[
	Script Name	: SpawnScripts/TheBaubbleshire/LozoriaShinkicker.lua
	Script Purpose	: Lozoria Shinkicker 
	Script Author	: Dorbin
	Script Date	: 2022.01.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local PieThief = 5437
local OroRoots = 5438

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	    ProvidesQuest(NPC, OroRoots)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function OroStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I could go for a pint. What do you need?", "TheJob")
 StartConversation(conversation, NPC, Spawn, "Oh you are, are ya? Well I'll tell ya what - if ya do something for me, I'll get you a pint on the house and pay ya as well.")
   PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker001.mp3", "", "ponder", 297007289,1280253281 , Spawn)
end

function TheJob(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker002.mp3", "", "", 1470439081,2268467194 , Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Get on with it. What's the job?", "TheJob2")
  StartConversation(conversation, NPC, Spawn, "Bregun! Fetch this one a pint! Now, let me tell ya what I'd like ya to do. You know about the Oakmyst Forest. Everyone does. You see ever since we halflings were removed from the Vale, we've been unable to get ahold of any Jum Jum. Fortunately, the dryads make a halfway decent replacement.")
end

function TheJob2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Alright, well, what do you need?", "patience")
 StartConversation(conversation, NPC, Spawn, "Patience! Patience. We do things slowly around here. Don't confuse us halflings with the gnomes, Haha! Now, where was I?")
  PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker003.mp3", "", "no", 3414180428,3979244034 , Spawn)
end

function patience(NPC, Spawn)
	FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I'll go find your Oro roots. Save a drink for me!", "OfferQuest1")
 StartConversation(conversation, NPC, Spawn, "Oh, yes. The dryads in the forest with the Jum Jum replacement. My pop calls it a darn-poor substitution, but I think he's a wee bit bitter about the whole ordeal. At any rate, why don't you forage around and see if you can find any the Oro root they're growing. I could use some for the tavern's next batch.")
 	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker004.mp3", "", "nod", 2659331601,3561367931 , Spawn)
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, OroRoots)
end

function Guilty(NPC, Spawn)
	FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I'll have to let Nyla know. She may have a few words for you.", "UpdateThief")
 StartConversation(conversation, NPC, Spawn, "Good knows! You caught me! But the pie is gone. I just couldn't resist! She'll have to come by later for an ale on the house.")
 	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker006.mp3", "", "wince", 171584737,1896068208 , Spawn)
end

function UpdateThief(NPC, Spawn)
    SetStepComplete(Spawn, PieThief, 4)
   end

function hailed(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
if HasQuest (Spawn, PieThief) and GetQuestStep(Spawn, PieThief) == 4 then
        conversation = CreateConversation()
     AddConversationOption(conversation, "Ah-ha, it was you! Those pie crumbs on your tunic give you away. You took Nyla's pie!", "Guilty")
          AddConversationOption(conversation, "Nothing right now. Enjoy your pint.")
    StartConversation(conversation, NPC, Spawn, "Bring me another pint, Bregun!  Mine's almost empty!  Well, hello there! What brings you into my Papa's fine establishment?", "", Spawn)
	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker000.mp3", "", "", 1408955306, 2441116246, Spawn)
 
 elseif  HasQuest(Spawn, OroRoots) and GetQuestStep(Spawn, OroRoots) == 2 then
          conversation = CreateConversation()
    AddConversationOption(conversation, "I've found your Oro roots. Here you go.", "FoundRoots")
     AddConversationOption(conversation, "I'm still gathering those roots for you.")
     AddConversationOption(conversation, "Nothing right now. Enjoy your pint.")
    StartConversation(conversation, NPC, Spawn, "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", Spawn)
	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "", "", 1585254591, 550642986, Spawn)
    

elseif HasQuest(Spawn, OroRoots) and not HasCompletedQuest(Spawn, OroRoots) and GetQuestStep(Spawn, OroRoots) <= 2 then

          conversation = CreateConversation()
     AddConversationOption(conversation, "I'm still gathering those roots for you.")
     AddConversationOption(conversation, "Nothing right now. Enjoy your pint.")
    StartConversation(conversation, NPC, Spawn, "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", Spawn)
	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "", "", 1585254591, 550642986, Spawn)


elseif not HasQuest(Spawn, OroRoots) and not HasCompletedQuest(Spawn, OroRoots) and GetLevel(Spawn) >=5 then
     conversation = CreateConversation()
     AddConversationOption(conversation, "I'm looking for some work if you have any.", "OroStart")
    
     AddConversationOption(conversation, "Nothing right now. Enjoy your pint.")
    StartConversation(conversation, NPC, Spawn, "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", Spawn)
	PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "", "", 1585254591, 550642986, Spawn)

else
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_lozoria_first_a433e906.mp3", "Ahh, there's nothing like a nice pint to tide you over till the next one!", "", 908545867, 693626511, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_multhail2_c18b6ff4.mp3", "Bring me another pint, Bregun!  Mine's almost empty!  What brings you into my papa's fine establishment, friend?", "", 1585254591, 550642986, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/100_lozoria_shinkicker_callout_7d9f1c7c.mp3", "Ahh ... nothing like a pint to tide you over till the next one. Greetings, traveler! Won't you join me for an ale?", "", 2310344859, 4256384860, Spawn)

	end
end

function FoundRoots (NPC, Spawn)
	SetStepComplete(Spawn, OroRoots, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Good luck on the next batch.")
	StartConversation(conversation, NPC, Spawn, "Fine indeed! I'll get Bregun working on this next batch! Here, let me pay you. I did say I would, didn't I? Ah-hah! Thank goodness our pal is an adventurer! I can afford to run this tavern at a loss. Oh Bregun! Time for another pint!")
		PlayFlavor(NPC, "voiceover/english/lozoria_shinkicker/qey_village06/lozoriashinkicker005.mp3", "", "thanks", 3396930954, 3615323112, Spawn)
end

end

