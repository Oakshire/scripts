--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseWaterElemental1.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.18 06:10:35
    Script Purpose : 
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
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "", "Your footsteps sent ripples before you", "", 0, 0, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "You will not defile this place!", "", 0, 0, Player, 27)
        elseif choice == 3 then
		PlayFlavor(NPC, "", "A drop in the ocean can disturb the waves.", "", 0, 0, Player, 27)

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
		PlayFlavor(NPC, "", "Return to the rivers from where you came.", "", 0, 0, Player, 27)
        elseif choice == 2 then
		PlayFlavor(NPC, "", "The oceans accept all who return.", "", 0, 0, Player, 27)
         end
    end
end
end
end





function victory(NPC,Player)
    if IsPlayer(Player)and  not HasLanguage(Player,27 )then
    Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,27 )then
       local choice = MakeRandomInt(1,5)
	    if choice == 1 then
	        PlayFlavor(NPC, "", "How does it feel to drown?", "", 0, 0, Spawn, 27)
        elseif choice == 2 then
	        PlayFlavor(NPC, "", "You don't drown by being in water, you drown by staying there.", "", 0, 0, Spawn, 27)
    end
end
end
