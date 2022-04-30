--[[
    Script Name        :    QeynosHarbor Zonescript
    Script Purpose    :    Facilitate Qeynos Harbor
    Script Author    :    Dorbin
    Script Date        :    10/9/2019
    Script Notes    :    
--]]
dofile("SpawnScripts/NorthQeynos/QueenAntoniaBayle.lua")

function init_zone_script(zone)
end

function player_entry(zone, player)
SendPopUpMessage(Player, "Qeynos Harbor", 230, 230, 230)   
end

function enter_location(zone, spawn, grid)
end

function leave_location(zone, spawn, grid)
end

function dawn(Zone)
local Antonia = GetSpawnByLocationID(Zone,379022)
if Antonia ~=nil then
local choice = MakeRandomInt(1,5)  -- Atonia's Speechs - #5 represents a skipped speech
    if choice == 1 then
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_propaganda_1_a_c81e36af.mp3", "Good people of Qeynos, we gather today in honor of our city.  We citizens have great reason to be proud, for Qeynos has proven its worth through times of struggle and adversity.  It has risen from the chaos and darkness of the Age of Cataclysms to become first among all the cities of Norrath.  Qeynos- city of valor and defender of the meek.  These are not empty words; even those far beyond our borders speak of our accomplishments! Everyone, look around you.  The beautiful towers and spires, the gardens, buildings and bustling market places- we live in a paradise without equal.  It is hard to believe there was once a time when Qeynos lay in ruins, its streets mired.  But our city has returned to life with even greater splendor.", "", 724319904, 1189766476)
    AddTimer(Antonia, 55000, "PropB",1) 
    AddTimer(Antonia, 87000, "PropD",1)
    AddTimer(Antonia, 137000,"PropE",1)
    AddTimer(Antonia, 177000, "EndLoop",1)            
    
    elseif choice == 2 then 
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_speech_newdawn_a_c02fffe6.mp3", "Good people of Qeynos, I declare this to be a day of festivities. Welcome everyone to our New Dawn Day celebration! The old year has passed; we stand at the threshold of a new year, full of promise and opportunity. May this be a time to reflect upon our past while looking ahead to a glorious future! One may ask, \"Why do we call the start of the new year 'New Dawn Day'?\"  I believe it is because Qeynos is like the sun in  early morning. We already shine with an unmatched brilliance, but our full power has yet to come forth into the world. We have only seen a sliver of our city's golden destiny!", "", 3189486571, 2780192347)
    AddTimer(Antonia, 47000, "NewDawnB",1) 
    AddTimer(Antonia, 97000, "NewDawnC",1)   
    AddTimer(Antonia, 133000, "EndLoop",1)            

    elseif choice ==3 then
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
    local check = MakeRandomInt(1,2)
        if check ==1 then
		PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_3_a_92172058.mp3", "Fellow Qeynosians, gather around and listen closely.  If my voice sounds strained, it is because of the grave and morbid subject of which I speak.  I had prayed that such disturbing words need never be spoken in Qeynos.  But these are times of great danger, and you must be warned. Our enemy, Lucan D'Lere, the tyrant of Freeport, is no ordinary, mortal foe.  He is no mere renegade General who has allowed his personal ambition to usurp his proper loyalties.  What I am about to say will horrify you.", "", 3011381199, 3373600464)
        AddTimer(Antonia, 39500, "FreeportB",1) 
        AddTimer(Antonia, 86000, "FreeportC",1)
        AddTimer(Antonia, 124000, "EndLoop",1)            
         elseif check ==2 then
	    PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_2_a_70f7471b.mp3", "Good people of Qeynos, hear me!  There is more you must know about our enemy, Freeport.  Our trusted Qeynosian agents have observed the enemy closely keeping a vigilant watch they have brought us news so we may arm and fortify ourselves.  If we are to stand up for our city and protect her virture from the forces of evil, we must be wise to the ways of evil.  We must have knowledge of Freeport's true nature, lest anyone here be lead astray by its propoganda.  Listen carefully fellow citizens!", "", 4187125073, 1375449316)
        AddTimer(Antonia, 36000, "FreeportB",1) 
        AddTimer(Antonia, 83000, "FreeportC",1)
        AddTimer(Antonia, 117000, "EndLoop",1)
        end
    elseif choice ==4 then
    PlayAnimation(Antonia, 10756) 
    AddTimer(Antonia, 2000, "visage01")	
	PlayFlavor(Antonia, "voiceover/english/queen_antonia_bayle/qey_north/eco_200_statue_queen_antonia_bayle_denouncement_freeport_2_a_70f7471b.mp3", "Good people of Qeynos, hear me!  There is more you must know about our enemy, Freeport.  Our trusted Qeynosian agents have observed the enemy closely keeping a vigilant watch they have brought us news so we may arm and fortify ourselves.  If we are to stand up for our city and protect her virture from the forces of evil, we must be wise to the ways of evil.  We must have knowledge of Freeport's true nature, lest anyone here be lead astray by its propoganda.  Listen carefully fellow citizens!", "", 4187125073, 1375449316)
    AddTimer(Antonia, 36000, "PropC",1) 
    AddTimer(Antonia, 106000,"PropE",1)
    AddTimer(Antonia, 144000, "EndLoop",1)            
  
    elseif choice ==5 then
    RandomGreeting(Antonia)
  
       end
    end
end
function dusk(Zone)
local Antonia = GetSpawnByLocationID(Zone,379022)
if Antonia ~=nil then
RandomGreeting(Antonia)
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

