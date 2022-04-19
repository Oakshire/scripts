--[[
	Script Name	: SpawnScripts/Castleview/EntertainerFaeadaen.lua
	Script Purpose	: Entertainer Faeadaen 
	Script Author	: Dorbin
	Script Date	: 2022.01.20
	Script Notes	: 
--]]
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
    local con = CreateConversation()
    if Timer == false then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen.mp3", "", "orate", 2289708399, 1034577130, Spawn)
    AddConversationOption(con, "I would love a performance. [ 2 Silver ]", "Perforamnce")    
    else
    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen.mp3", "", "", 2289708399, 1034577130, Spawn)
    end    
    if not HasQuest (Spawn, Quest) and not HasCompletedQuest (Spawn, Quest) then
    AddConversationOption(con, "You must be quite the entertainer. Need any help?", "NeedHelp")
    end
    if GetQuestStep(Spawn, Quest)==2 then
    AddConversationOption(con, "I told Valean you wouldn't be able to make it to dinner tonight.", "NoDinner")
    end
    if GetQuestStep(Spawn, Book)==1 then
    AddConversationOption(con, "Bleemeb tasked me with retrieving the book you borrowed.", "NoBook")
    end
    AddConversationOption(con, "I'll keep my coins, thank you.")
    StartConversation(con, NPC, Spawn, "Come closer and watch as I make lights dance and coins disapear into thin air! ")
end
end

function NoBook(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen002.mp3", "", "ponder", 386324181, 1757469505, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "Alright, I'll check at the inn. Thank you.", "BookUpdate")
    StartConversation(con, NPC, Spawn, "The book on the great tree, Arbos? I'm afraid I left the book somewhere at the local inn. You'll have to search for it there.")
end

function NeedHelp(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    		PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen000.mp3", "", "agree", 3630263809, 612433831, Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "I'll deliver the message for you.", "GiveQuest")
    AddConversationOption(con, "I'm busy. Sorry.")
    StartConversation(con, NPC, Spawn, "Customers love my magic tricks! Actually, a little too much. Bulurg asked me to work late tonight. Could you ask Valean at the inn and let me know I can't dine with him tonight? I appreciate your help.")
end

function NoDinner(NPC,Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/entertainerfaeadaen001.mp3", "", "thank", 1133009328, 1111624722, Spawn)
    SetStepComplete(Spawn, Quest, 2)
    local con = CreateConversation()
    AddConversationOption(con, "I just might.")
    StartConversation(con, NPC, Spawn, "Thank you for telling him. If you have a moment, step inside and try one of Bulurg's special brews.")
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

function AcceptedQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "thank", 0, 0, Spawn)
	local con = CreateConversation()
	AddConversationOption(con, "My pleasure.")
	StartConversation(con, NPC, Spawn, "Oh, thank you! I just can't break away to deliver it myself.")
end