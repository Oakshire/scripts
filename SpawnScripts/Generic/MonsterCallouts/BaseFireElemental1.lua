--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseFireElemental1.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.17 12:10:17
    Script Purpose : Base Fire Elemental Voiceover collection
                   : 
--]]

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  -- SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end
    

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_garbled_fc50550a.mp3", "Ervmenta oolaves kortenza", "", 2629318897, 172422148, Spawn, 27)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 2759572022, 1504437337, Spawn, 27)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_garbled_7c1e7a03.mp3", "Oerbet aertres nuavalen sulana", "", 944765445, 2661342879, Spawn, 27)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_garbled_48632408.mp3", "Boona vas kontrella", "", 1013209475, 1648696462, Spawn, 27)
    end     
end


 function aggro(NPC,Player)   
    SpawnSet(NPC, "visual_state", 0)
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player)==true then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,27 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,5)
 	    if choice == 1 then
		PlayFlavor(NPC, "", "My flames will reduce your feeble body to ashes.", "", 3022463100, 3116808293, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "Burn within my fires!", "", 257276325, 2522637460, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "No guests allowed.", "", 3738509549, 661160854, Player, 27)
        elseif choice == 4 then
		PlayFlavor(NPC, "", "Now feel the wrath of my flames!", "", 769265419, 1578038738, Player, 27)
        elseif choice == 5 then
		PlayFlavor(NPC, "", "Burn!", "", 2360093588, 1657528756, Player, 27)
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
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_death_1f242778.mp3", "You will not trodden me out!", "", 1892762142, 2621190081, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_death_b61ed449.mp3", "In ashes of despair, I will avenge thee.", "", 1014251980, 1288193790, Player, 27)
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
	    PlayFlavor(NPC, "", "My flame doesn't extinguish when I miss you, simpleton.", "", 957561407, 2078337123, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "My flames will not miss again!", "", 206904711, 131378704, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "My fire burns extra bright!", "", 3662264007, 3476541130, Player, 27)
        end
        end
    end
end
end


function victory(NPC,Player)
    if IsPlayer(Player)and  not HasLanguage(Player,27 )then
    Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,27 )then
		PlayFlavor(NPC, "voiceover/english/elemental_fire_base_1/ft/elemental/elemental_fire_base_1_1_victory_3815bfee.mp3", "The burned adventurer fears the flame!", "", 2392954105, 283933087, Spawn, 27)
    end
end

