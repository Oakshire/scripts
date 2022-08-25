--[[
    Script Name    : ZoneScripts/NorthQeynos.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.25 03:04:09
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/NorthQeynos/QueenAntoniaBayle.lua")

function init_zone_script(Zone)

end

function player_entry(zone, player)
SendPopUpMessage(player, "Qeynos Province District", 230, 230, 230)    
end


function dawn(Zone)  -- ANTONIA SATUE ANIMATION
local Antonia = GetSpawnByLocationID(Zone,570562)
local Antonia2 = GetSpawnByLocationID(Zone,570561)
local choice = MakeRandomInt(1,4)
if Antonia ~=nil then
    if choice == 1 then
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
    ProbA(Antonia)
    AddTimer(Antonia, 55000, "PropB",1) 
    AddTimer(Antonia, 85000, "PropC",1)   
    AddTimer(Antonia, 147000, "PropD",1)
    AddTimer(Antonia, 196000,"PropE",1)
    AddTimer(Antonia, 233000, "RandomGreeting",1)
    AddTimer(Antonia, 233000, "EndLoop",1)            
    
    elseif choice == 2 then 
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
    NewDawnA(Antonia)        
    AddTimer(Antonia, 47000, "NewDawnB",1) 
    AddTimer(Antonia, 97000, "NewDawnC",1)   
    AddTimer(Antonia, 134000, "EndLoop",1)            
    --AddTimer(Antonia, 135000, "RandomGreeting",1)
    
    elseif choice ==3 then
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
    local check = MakeRandomInt(1,2)
        if check ==1 then
        FreeportA(Antonia)
        AddTimer(Antonia, 39000, "FreeportB",1) 
        AddTimer(Antonia, 86000, "FreeportC",1)
        AddTimer(Antonia, 120000, "RandomGreeting",1)
        elseif check ==2 then
        FreeportA2(Antonia) 
        AddTimer(Antonia, 36000, "FreeportB",1) 
        AddTimer(Antonia, 83000, "FreeportC",1)
        AddTimer(Antonia, 117000, "RandomGreeting",1)            
        AddTimer(Antonia, 117000, "EndLoop",1)            
       
       end
    else 
        RandomGreeting(Antonia)       
    end
end

if Antonia2 ~=nil then
    if choice == 1 then
    PlayAnimation(Antonia2, 10756) 
    AddTimer(Antonia2, 2000, "visage01")	
    ProbA(Antonia2)
    AddTimer(Antonia2, 55000, "PropB",1) 
    AddTimer(Antonia2, 85000, "PropC",1)   
    AddTimer(Antonia2, 147000, "PropD",1)
    AddTimer(Antonia2, 196000,"PropE",1)
    AddTimer(Antonia2, 233000, "RandomGreeting",1)
    AddTimer(Antonia2, 233000, "EndLoop",1)            
    
    elseif choice == 2 then 
    PlayAnimation(Antonia2, 10756) 
    AddTimer(Antonia2, 2000, "visage01")	
    NewDawnA(Antonia2)        
    AddTimer(Antonia2, 47000, "NewDawnB",1) 
    AddTimer(Antonia2, 97000, "NewDawnC",1)   
    AddTimer(Antonia2, 134000, "EndLoop",1)            
    --AddTimer(Antonia, 135000, "RandomGreeting",1)
    
    elseif choice ==3 then
    PlayAnimation(Antonia2, 10756) 
    AddTimer(Antonia2, 2000, "visage01")	
    local check = MakeRandomInt(1,2)
        if check ==1 then
        FreeportA(Antonia2)
        AddTimer(Antonia2, 39000, "FreeportB",1) 
        AddTimer(Antonia2, 86000, "FreeportC",1)
        AddTimer(Antonia2, 120000, "RandomGreeting",1)
        elseif check ==2 then
        FreeportA2(Antonia2) 
        AddTimer(Antonia2, 36000, "FreeportB",1) 
        AddTimer(Antonia2, 83000, "FreeportC",1)
        AddTimer(Antonia2, 117000, "RandomGreeting",1)            
        AddTimer(Antonia2, 117000, "EndLoop",1)            
       end
    else 
        RandomGreeting(Antonia2)

end
end
end

function dusk(Zone)
local Antonia = GetSpawnByLocationID(Zone,570562)
local Antonia2 = GetSpawnByLocationID(Zone,570561)
if Antonia ~=nil then
RandomGreeting(Antonia)
end
if Antonia2 ~=nil then
RandomGreeting(Antonia2)
end
end

    function ProbA(Antonia)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_a_c81e36af.mp3", "Good people of Qeynos, we gather today in honor of our city.  We citizens have great reason to be proud, for Qeynos has proven its worth through times of struggle and adversity.  It has risen from the chaos and darkness of the Age of Cataclysms to become first among all the cities of Norrath.  Qeynos- city of valor and defender of the meek.  These are not empty words; even those far beyond our borders speak of our accomplishments! Everyone, look around you.  The beautiful towers and spires, the gardens, buildings and bustling market places- we live in a paradise without equal.  It is hard to believe there was once a time when Qeynos lay in ruins, its streets mired.  But our city has returned to life with even greater splendor.", "converse_female02", 724319904, 1189766476)
    end

    function NewDawnA(Antonia)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_speech_newdawn_a_c02fffe6.mp3", "Good people of Qeynos, I declare this to be a day of festivities. Welcome everyone to our New Dawn Day celebration! The old year has passed; we stand at the threshold of a new year, full of promise and opportunity. May this be a time to reflect upon our past while looking ahead to a glorious future! One may ask, \"Why do we call the start of the new year 'New Dawn Day'?\"  I believe it is because Qeynos is like the sun in  early morning. We already shine with an unmatched brilliance, but our full power has yet to come forth into the world. We have only seen a sliver of our city's golden destiny!", "", 3189486571, 2780192347)
    end

    function FreeportA(Antonia)
		PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_3_a_92172058.mp3", "Fellow Qeynosians, gather around and listen closely.  If my voice sounds strained, it is because of the grave and morbid subject of which I speak.  I had prayed that such disturbing words need never be spoken in Qeynos.  But these are times of great danger, and you must be warned. Our enemy, Lucan D'Lere, the tyrant of Freeport, is no ordinary, mortal foe.  He is no mere renegade General who has allowed his personal ambition to usurp his proper loyalties.  What I am about to say will horrify you.", "", 3011381199, 3373600464)
    end

    function FreeportA2(Antonia)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_2_a_70f7471b.mp3", "Good people of Qeynos, hear me!  There is more you must know about our enemy, Freeport.  Our trusted Qeynosian agents have observed the enemy closely keeping a vigilant watch they have brought us news so we may arm and fortify ourselves.  If we are to stand up for our city and protect her virture from the forces of evil, we must be wise to the ways of evil.  We must have knowledge of Freeport's true nature, lest anyone here be lead astray by its propoganda.  Listen carefully fellow citizens!", "", 4187125073, 1375449316)
    end

-- Statue Diff
    function ProbA_2(Antonia2)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_a_c81e36af.mp3", "Good people of Qeynos, we gather today in honor of our city.  We citizens have great reason to be proud, for Qeynos has proven its worth through times of struggle and adversity.  It has risen from the chaos and darkness of the Age of Cataclysms to become first among all the cities of Norrath.  Qeynos- city of valor and defender of the meek.  These are not empty words; even those far beyond our borders speak of our accomplishments! Everyone, look around you.  The beautiful towers and spires, the gardens, buildings and bustling market places- we live in a paradise without equal.  It is hard to believe there was once a time when Qeynos lay in ruins, its streets mired.  But our city has returned to life with even greater splendor.", "converse_female02", 724319904, 1189766476)
    end

    function NewDawnA_2(Antonia2)
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_speech_newdawn_a_c02fffe6.mp3", "Good people of Qeynos, I declare this to be a day of festivities. Welcome everyone to our New Dawn Day celebration! The old year has passed; we stand at the threshold of a new year, full of promise and opportunity. May this be a time to reflect upon our past while looking ahead to a glorious future! One may ask, \"Why do we call the start of the new year 'New Dawn Day'?\"  I believe it is because Qeynos is like the sun in  early morning. We already shine with an unmatched brilliance, but our full power has yet to come forth into the world. We have only seen a sliver of our city's golden destiny!", "", 3189486571, 2780192347)
    end

    function FreeportA_2(Antonia2)
		PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_3_a_92172058.mp3", "Fellow Qeynosians, gather around and listen closely.  If my voice sounds strained, it is because of the grave and morbid subject of which I speak.  I had prayed that such disturbing words need never be spoken in Qeynos.  But these are times of great danger, and you must be warned. Our enemy, Lucan D'Lere, the tyrant of Freeport, is no ordinary, mortal foe.  He is no mere renegade General who has allowed his personal ambition to usurp his proper loyalties.  What I am about to say will horrify you.", "", 3011381199, 3373600464)
    end

    function FreeportA2_2(Antonia2)
	PlayFlavor(Antonia2, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_2_a_70f7471b.mp3", "Good people of Qeynos, hear me!  There is more you must know about our enemy, Freeport.  Our trusted Qeynosian agents have observed the enemy closely keeping a vigilant watch they have brought us news so we may arm and fortify ourselves.  If we are to stand up for our city and protect her virture from the forces of evil, we must be wise to the ways of evil.  We must have knowledge of Freeport's true nature, lest anyone here be lead astray by its propoganda.  Listen carefully fellow citizens!", "", 4187125073, 1375449316)
    end
