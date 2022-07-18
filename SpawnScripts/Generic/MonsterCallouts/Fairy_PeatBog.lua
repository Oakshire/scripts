--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Fairy_PeatBog.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.17 11:07:38
    Script Purpose : 
                   : 
--]]
local HealthCallout = false
    
function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 711889774, 2079504251, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 2527230882, 3520925768,Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4233892159, 3471050504, Spawn, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 2254044711, 2481645116, Spawn, 23)
 end     
end

 function aggro(NPC,Spawn)   
    if not HasLanguage(Spawn,23 )then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_aggro_b5dcbaa5.mp3", "Grin and bear the beating!", "", 3758606719, 1699037804, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_aggro_770ba678.mp3", "Now why would you want to hurt lil' ol' me?", "", 3814000908, 1517813575, Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_aggro_5a6eb2d5.mp3", "Trick or trick!  Time to treat... Myself!", "", 1790067400, 3113086855, Spawn, 23)
    end
    end
end   



function death(NPC,Spawn)
    if math.random(0,100)<=75 then
    if not HasLanguage(Spawn,23 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_death_657a37e2.mp3", "Poor fairy! Look what you did!", "", 2424549341, 3564174816, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_death_d53356c.mp3", "Now who will I play pranks on?", "", 3358518096, 3592956278, Spawn, 23)
end
       AddTimer(NPC,15000,"FifteenCall")
    end
end
end


function healthchanged(NPC, Spawn)  
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,10000,"HealthReset")
    if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else    
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_halfhealth_841ee3bc.mp3", "Oh, ouch! Stop it!", "", 2860422216, 4276234744, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_halfhealth_dc4a089.mp3", "Not the wings! Don't pluck my wings!", "", 3502933037, 2327888688, Spawn, 23)
        end
    end
    end
end
end
end

function HealthReset (NPC)
    HealthCallout = false
end


function victory(NPC,Spawn)
        if  HasLanguage(Spawn,23 )then
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_victory_8ccf44c3.mp3", "Ouch, I bet that hurt!", "", 1460203198, 2879371625, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_victory_900e4f5.mp3", "Oh, now that was a clever feign! Looks so real!", "", 3558673960, 2694598615, Spawn, 23)
    end
end
end