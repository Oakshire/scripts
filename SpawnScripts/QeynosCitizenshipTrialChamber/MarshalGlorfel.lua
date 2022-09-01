--[[
    Script Name    : SpawnScripts/Qeynos Citizenship Trial Chamber/MarshalGlorfel.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 05:08:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local QCitizen = 5718

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    SetTarget(NPC,Spawn)
if GetQuestStep (Spawn,QCitizen)==3 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "","Ahh, yer just in time!", "hello", 0,0, Spawn)
    end
end


function LeaveRange(NPC, Spawn)
    SetTarget(NPC,nil)
end

function hailed(NPC, Spawn)
if GetQuestStep(Spawn,QCitizen)==3 then
    Dialog1(NPC,Spawn)
elseif GetQuestStep(Spawn,QCitizen)==8 then
    Dialog2(NPC,Spawn)
elseif GetQuestStep(Spawn,QCitizen)<=5 and GetQuestStep(Spawn,QCitizen)>=3 then
    PlayFlavor(NPC, "voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel010.mp3","I think you got more to learn before you're ready to become a citizen of the city.", "no", 799396705,3625137136, Spawn)
elseif HasCompletedQuest(Spawn,QCitizen) then
     Dialog2(NPC,Spawn)
else
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3","Hey! You're not allowed in here!  Off with ya until you've proven yourself to complete this trial.", "glare", 1734668326, 429140096, Spawn)
end    
end

function Dialog1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ya see, we got a problem with a group who decided to break away from Qeynos, and I heard of the fine things ya did  on the Island of Refuge.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel001.mp3", 1972383345, 185623710)
	Dialog.AddOption("Who would want to do that?", "Option1A")
	Dialog.AddOption("Wouldn't they just be allowed to leave?", "Option1Aa")
	Dialog.Start()
end	
 
function Option1A(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Some people are too set in their ways to live in our open society, or else they've been lured away to Freeport by the promise of wealth that they'll never receive.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel002.mp3", 1674795503, 1640631237)
	Dialog.AddOption("[continue]", "Option1B")
	Dialog.Start()
end	

function Option1Aa (NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Of course, they're allowed to leave.  Problem is, these folks have been plottin' the murder of one of our fine citizens, and we can't have that.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel003.mp3", 932259166, 3680508066)
	Dialog.AddOption("[continue]", "Option1B")
	Dialog.Start()
end	

function Option1B(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("These murderous scoundrels planned to slay our very own Baron Ironforge.  Though their plans never came to fruition, Baron Ironforge still lives due only to the heroics of one of Qeynos' fine adventuring companies and a keg of imported halfling ale.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel004.mp3", 1462903596, 2724798765)
	Dialog.AddOption("Which company was it?", "Option1C")
	Dialog.Start()
end	

function Option1C(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Twas the great Halfer's Company.  Not a one among 'em that's not a halfling or half elf.  Strange lot, indeed!  At any rate, we need to teach these ruffians a lesson.  We'll leave this to yer judgment, if you can return the senses to any of these traitors, by all means, do so.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel005.mp3", 3056107447, 1822754190)
	Dialog.AddOption("By judgment, you mean save who I can and kill the rest?", "Option1D")
	Dialog.Start()
end	

function Option1D(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("That's right!  Those who mean ill will to our people mustn't live, even if they're off to Freeport.  It's your job to succeed where one of our knights failed.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel006.mp3", 3980894706, 4254118210)
	Dialog.AddOption("I will not disappoint.", "Option1E")
	Dialog.Start()
end	

function Option1E(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So, what's the first thing ya do when ye come across one of em?")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel008.mp3", 344841247, 3075235208)
	Dialog.AddOption("Speak with them, and convince them of the error of their ways.", "Option1F")
	Dialog.AddOption("Slit their throats before they escape!", "Option1Fa")
	Dialog.Start()
end	

function Option1Fa(NPC,Spawn) --Evil
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whoa, now!  Ya sound a bit like the enemy.  Be careful that when yer meting out yer judgment that ya don't become like those yer fixin' to judge.")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel007.mp3", 3117666178, 1750353665)
	Dialog.AddOption("Alright. I'll be sure to hear them out before I give judgement.", "Option1F")
	Dialog.Start()
end	


function Option1F(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I think ya got it!  Let it be known, you got the full backing of the law, if push comes to shove.  We'll understand if you can't make them see the light of reason, just so long as ya give it a shot.  If you can prove yourself here, we'll welcome you, with open arms,  into the city as a citizen!")
	Dialog.AddVoiceover("voiceover/english/marshal_glorfel/qey_catacomb_epic01/marshalglorfel009.mp3", 3980894706, 4254118210)
	Dialog.AddOption("Let us begin, Marshal.")
	Dialog.Start()
	SetStepComplete(Spawn,QCitizen,3)
    DoorCheck(NPC,Spawn)
end	

function DoorCheck(NPC,Spawn)
     Door = GetSpawn(NPC,22101355)
    if Door ~= nil then
    Despawn(Door)
    end
end