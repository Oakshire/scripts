--[[
    Script Name    : SpawnScripts/Caves/Drossdozer.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.03 03:10:05
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
end

function respawn(NPC)
	spawn(NPC)
end



local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  -- SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end
    

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,8)
 	    if choice == 1 then
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_7c1e7a03.mp3", "Oerbet aertres nuavalen sulana", "", 294229851, 323943279, Player, 27)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_48632408.mp3", "Boona vas kontrella", "", 2577927628, 312715019, Player, 27)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 2947217871, 3677590207, Player, 27)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_ba1c8454.mp3", "Ervmenta oolaves kor'tenza", "", 422166849, 245170409, Player, 27)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 639170042, 3072010585, Player, 27)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_7c1e7a03.mp3", "Oerbet aertres nuavalen sulana", "", 2422828991, 2611697218, Player, 27)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_48632408.mp3", "Boona vas kontrella", "", 3186320893, 862014285, Player, 27)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_garbled_ba1c8454.mp3", "Ervmenta oolaves kor'tenza", "", 888692198, 2015697711, Player, 27)
     end     
end
end

 function aggro(NPC,Player)   
    SpawnSet(NPC, "visual_state", 0)
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and  IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,27 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,5)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_aggro_8c0c561c.mp3", "My master does not allow interruptions. ", "", 3022463100, 3116808293, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_aggro_16cd431.mp3", "Yes, my master, the intruder will die.", "", 257276325, 2522637460, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_aggro_11dc1958.mp3", "No guests allowed.", "", 3738509549, 661160854, Player, 27)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_aggro_b8540029.mp3", "The guardian obeys.", "", 769265419, 1578038738, Player, 27)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_aggro_703b6e79.mp3", "The mortals will perish.", "", 2360093588, 1657528756, Player, 27)
       end
    end
end   
end


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,27 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,5)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_death_621f26ae.mp3", "Master will make another.", "", 1723362223, 1880861825, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_death_e7820773.mp3", "You cannot defeat us all.", "", 3579670490, 2152032663, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_death_e7820773.mp3", "You cannot defeat us all.", "", 3579670490, 2152032663, Player, 27)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_death_6e0fe426.mp3", "So ends my service.", "", 3508288945, 550656700, Player, 27)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_death_7e77a73c.mp3", "There's always more.", "", 2395781453, 2542379752, Player, 27)
     end
    end
end
end
end



function healthchanged(NPC, Player)  
    if  GetTempVariable(NPC, "HealthCallout")== "false" and IsPlayer(Player) then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 and GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,10000,"HealthReset")
        if not HasLanguage(Player,27 )then
        Garbled(NPC,Player)
        else    
     local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_halfhealth_56c106e.mp3", "I require repairs.", "", 957561407, 2078337123, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/golem_base_2/ft/golem/golem_base_2_1_halfhealth_6afbfbe4.mp3", "Don't let the intruders progress.", "", 206904711, 131378704, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_halfhealth_ea5a0760.mp3", "My service is almost done.", "", 3662264007, 3476541130, Player, 27)
        end
        end
    end
end
end



