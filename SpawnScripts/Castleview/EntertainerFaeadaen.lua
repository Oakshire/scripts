--[[
	Script Name	: SpawnScripts/Castleview/EntertainerFaeadaen.lua
	Script Purpose	: Entertainer Faeadaen 
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

local Quest = 238
local Book = 5468
local Timer = false

function spawn(NPC)
    ProvidesQuest(NPC, Quest)
    SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end

function InRange (NPC,Spawn)
    if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else      
    if math.random(1, 100) <= 66 then
    local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_callout_7bbafc74.mp3", "Don't let your eyes wander or you'll miss the magic! Come closer, traveler. You must see to believe.", "shimmy", 250974815, 3465292886, Spawn)
	elseif choice == 2 then
	    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail1_4c72e751.mp3", "Please, come back for my next show - I've no room for more onlookers. Why don't you belly up to the bar and try one of Bulurg's brews?", "no", 3560057212, 3299104389, Spawn)
	elseif choice ==3 then
	    PlayFlavor(NPC, "", "", "dance", 0, 0, Spawn)
	else
PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail2_2d3351bb.mp3", "Step up and watch as I make lights dance and coins disappear into thin air!", "", 3189499038, 1784304503, Spawn)
    end
end
end
end

function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  

	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Come closer and watch as I make lights dance and coins disapear into thin air!")
	Dialog.AddVoiceover("voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen.mp3", 2289708399, 1034577130)
    if Timer == false then
    PlayFlavor(NPC, "", "", "orate",0,0, Spawn)
    Dialog.AddOption("I would love a performance. [ 2 Silver ]", "Perforamnce")    
    else
    end
    if not HasQuest (Spawn, Quest) and not HasCompletedQuest (Spawn, Quest) then
    Dialog.AddOption("That's a pretty good trick.  Does it work to attract customers?", "GiveQuest")
    end
    if GetQuestStep(Spawn, Quest)==2 then
    Dialog.AddOption("I let Valean know you won't be able to make it.  He took it well.", "NoDinner")
    end
    if GetQuestStep(Spawn, Book)==1 then
    Dialog.AddOption("I was sent to get the Book of Arbos.", "NoBook")
    end
	Dialog.AddOption("I hope the drinks inside are as good as the entertainment.")
	Dialog.Start()
end
end

function NoBook(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The book on the great tree Arbos? I am afraid I left the book somewhere in the local inn. You will have to search for it there.")
	Dialog.AddVoiceover("voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen002.mp3", 386324181, 1757469505)
 	PlayFlavor(NPC, "", "", "ponder", 0,0 , Spawn)
    Dialog.AddOption( "Alright, I'll check at the inn. Thank you.", "BookUpdate")
	Dialog.Start()
end

function NeedHelp(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Customers love my magic tricks! Actually, a little too much. Bulurg asked me to work late tonight. Could you ask Valean at the inn and let me know I can't dine with him tonight? I appreciate your help.")
	Dialog.AddVoiceover("voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen000.mp3", 3630263809, 612433831)
 	PlayFlavor(NPC, "", "", "agree", 0,0 , Spawn)
    Dialog.AddOption( "I will let Valean know that you can't make it.", "GiveQuest")
	Dialog.Start()
end

function NoDinner(NPC,Spawn)
    SetStepComplete(Spawn, Quest, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Thank you for telling him. If you have a moment, step inside and try one of Bulurg's special brews.")
	Dialog.AddVoiceover("voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen001.mp3", 1133009328, 1111624722)
 	PlayFlavor(NPC, "", "", "curtsey", 0,0 , Spawn)
    Dialog.AddOption( "Yes, I think I'll try one of her drinks.")
	Dialog.Start()
end

function BookUpdate(NPC,Spawn)
    SetStepComplete(Spawn, Book, 1)
end

function ResetTimer(NPC,Spawn)
Timer = false
end

function Perforamnce(NPC,Spawn)
        if Timer == false then 
            Timer = true
    RemoveCoin(Spawn, 200)
    SendMessage(Spawn,"You give Entertainer Faeadaen 2 silver.")
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "", "With pleasure.", "nod", 0, 0, Spawn)
    	
    		AddTimer(NPC, 900, "Shine",1) 
    		AddTimer(NPC, 1100, "Flourish",1)   
    		AddTimer(NPC, 10000, "Shimmy",1)
    		AddTimer(NPC, 12000,"Kiss",1)
    		AddTimer(NPC, 15500,"Finale",1)
            AddTimer(NPC, 16000,"ResetTimer",1)
        end    
end

function Flourish(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "flourish", 0, 0, Spawn)
end

function Finale(NPC,Spawn)
 PlayFlavor(NPC, "", "", "result_fireworks_flare_coins_burst", 0, 0, Spawn)
end
    
--function Glow(NPC,Spawn) --a bit much, but timing is right
--   FaceTarget(NPC,Spawn)
--    PlayFlavor(NPC, "", "", "result_sparkles_clinging_soft", 0, 0, Spawn)
--end

function Shimmy(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "shimmy", 0, 0, Spawn)
end

function Shine(NPC,Spawn)

  PlayFlavor(NPC, "", "", "result_coins_falling", 0, 0, Spawn)
end

function Kiss(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC, "", "", "kiss", 0, 0, Spawn)
end


function GiveQuest(NPC, Spawn)
	OfferQuest(NPC, Spawn, Quest)
end
