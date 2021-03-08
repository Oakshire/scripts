--[[
    Script Name    : SpawnScripts/qeynos_combined02/aGraystoneGuildbruiserDojoBarbarian133772269.lua
    Script Author  : Rylec
    Script Date    : 2021.03.07 02:03:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetModelType(NPC, "112") -- barbarian male
    SpawnSet(NPC, "soga_model_type", "112")
    SpawnSet(NPC, "chest_type", "5461")
    SpawnSet(NPC, "legs_type", "5462")
    SpawnSet(NPC, "hair_type", "1135")    
    SpawnSet(NPC, "soga_hair_type", "1135")      
    SpawnSet(NPC, "facial_hair_type", "1186")    
    SpawnSet(NPC, "soga_facial_hair_type", "1186") 
    SpawnSet(NPC, "skin_color", "255 255 255")    
    SpawnSet(NPC, "soga_skin_color", "255 255 255") 
    SpawnSet(NPC, "eye_color", "102 154 140")    
    SpawnSet(NPC, "soga_eye_color", "102 154 140")  
    SpawnSet(NPC, "hair_color1", "38 22 21")      
    SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
    SpawnSet(NPC, "hair_color2", "120 50 0")      
    SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
    SpawnSet(NPC, "hair_highlight", "29 21 28")      
    SpawnSet(NPC, "soga_hair_highlight", "29 21 28")
    SpawnSet(NPC, "hair_type_color", "0 0 0")
    SpawnSet(NPC, "soga_hair_type_color", "0 0 0")
    SpawnSet(NPC, "hair_face_color", "0 0 0")
    SpawnSet(NPC, "soga_hair_face_color", "0 0 0")

    SetEquipment(NPC, 3, 991, 255, 255, 255, 255, 255, 255)
    SetEquipment(NPC, 5, 0)
    SetEquipment(NPC, 6, 1010, 255, 255, 255, 255, 255, 255)
    SetEquipment(NPC, 7, 4570, 255, 255, 255, 255, 255, 255)
    SetEquipment(NPC, 8, 992, 255, 255, 255, 255, 255, 255)

    EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)    

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1002.mp3", "", "", 0, 0, Spawn)
    
    local Chat_Dialogue = MakeRandomInt(1,3)
    
        if Chat_Dialogue == 1 then
            Say(NPC, "There is nothing duller than seeing one of those pale face monks. However, I must say they do put up a good fight during the training sessions.")
        elseif Chat_Dialogue == 2 then
            Say(NPC, "This place sure is as exciting as looking at a Koada'Dal's face. Where is a good fight when you need one!")
        elseif Chat_Dialogue == 3 then
            Say(NPC, "Tell me, would you rather be in a good fight or hug a tree like those Tunarians do?")
        else
            Say(NPC, "What this place need is a good alehouse!")
        end
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    local choice = MakeRandomInt(1,14) 
    local timer = math.random(5000,10000)

    if choice == 1 then  -- cackle 
        PlayAnimation(NPC, 125)
        AddTimer(NPC, timer, "EmoteLoop")	
    elseif choice == 2 then  -- converse_male04
	    PlayAnimation(NPC, 2983)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 3 then  -- confused
	    PlayAnimation(NPC, 11214)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 4 then  -- converse_male05
	    PlayAnimation(NPC, 11236)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 5 then  -- converse_male06  
	    PlayAnimation(NPC, 11237)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 6 then  -- converse_male07    
	    PlayAnimation(NPC, 11238)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 7 then  -- converse_male10    
	    PlayAnimation(NPC, 11241)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 8 then  -- converse_male11 
	    PlayAnimation(NPC, 11242)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 9 then  -- doubletake
	    PlayAnimation(NPC, 11415)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 10 then  -- happy  
	    PlayAnimation(NPC, 11668)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 11 then  -- heckno  
	    PlayAnimation(NPC, 11680)
        AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 12 then  -- howl  
	    PlayAnimation(NPC, 11718)
	    AddTimer(NPC, timer, "EmoteLoop")
    elseif choice == 13 then  -- smile 
	    PlayAnimation(NPC, 12285)
        AddTimer(NPC, timer, "EmoteLoop")
    else  -- wink 
    	PlayAnimation(NPC, 13304)
        AddTimer(NPC, timer, "EmoteLoop")
    end
end