--[[
	Script Name	: SpawnScripts/Nettleville/KarrieClayton.lua
	Script Purpose	: Karrie Clayton 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"
local HailCheck = false

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")
AddTimer(NPC, 12000,"Swooning")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else
Dialog1(NPC, Spawn)
end
end

function Dialog1(NPC, Spawn)
    HailCheck = true
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh my!  Yet another overzealous admirer. Please wait till after the show for autographs.")
	Dialog.AddVoiceover("voiceover/english/karrie_clayton/qey_village01/karrieclayton.mp3", 1984155043, 1707628406)
    if GetQuestStep(Spawn,239)==1 then
	Dialog.AddOption("I've actually got a letter for you from your sister, Angelia.","Delivered")
    end
	Dialog.AddOption("I'm sorry.  Excuse me for interrupting your performance.  ")
	Dialog.Start()
    AddTimer(NPC,26000,"HailReset")
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, 239, 1)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("Oh, my loving sister worries about me!  Her note says her performances in Starcrest are not going well.  Now I feel guilty going home with such a full coin purse every night.  Hmm, let me add a message to this note.  You can bring it back to her!")
	Dialog.AddVoiceover("voiceover/english/karrie_clayton/qey_village01/karrieclayton000.mp3", 2793000860, 2260935074)
	Dialog.AddOption("I'll see Angelia get's your reply.")
	Dialog.Start()
end



function HailReset(NPC)
    HailCheck = false
end

function EmoteLoop(NPC)
    if HailCheck == true then
    AddTimer(NPC,26100,"EmoteLoop")
    else
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- flourish
        PlayAnimation(NPC, 11557)
        AddTimer(NPC, MakeRandomInt(21000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- kiss
        PlayAnimation(NPC, 11762)
        AddTimer(NPC, MakeRandomInt(5000,8000), "EmoteLoop")	
    
    elseif emoteChoice == 3 then
-- dance
        PlayAnimation(NPC, 11298)
        AddTimer(NPC, MakeRandomInt(10000,12000), "EmoteLoop")	
    
    elseif emoteChoice == 4 then
-- full curtsey
        PlayAnimation(NPC, 11633)
        AddTimer(NPC, MakeRandomInt(7000,8000), "EmoteLoop")	
     end
end
end


function Swooning(NPC,Spawn)
        local Logan = GetSpawn(NPC, 2330018)
        local Duncan = GetSpawn(NPC, 2330142)
    if HailCheck == false then	                    --WATCHER RESPOSNES IF KIMBERLY IS PERFORMING
	if Logan ~= nil then 
    FaceTarget(Logan,NPC)
     SetTarget(Logan,NPC)
   choice = math.random(1,3)   
        if choice == 1 then
        PlayFlavor(Logan, "","", "flirt", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Logan, "","", "cheer", 0, 0)            
        elseif choice == 3 then
        PlayAnimation(Logan,13310)
        --PlayFlavor(Logan, "","", "woowoo", 0, 0)            
        elseif choice == 4 then
        PlayFlavor(Logan, "","", "flex", 0, 0)            
               end
    end    
    if Duncan ~=nil then
     FaceTarget(Duncan,NPC)
     SetTarget(Duncan,NPC)
    choice = math.random(1,4)   
        if choice == 1 then
        PlayFlavor(Duncan, "","", "happy", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Duncan, "","", "flirt", 0, 0)            
        elseif choice == 3 then
        PlayFlavor(Duncan, "","", "wink", 0, 0)            
        elseif choice == 4 then
        PlayAnimation(Duncan,10760)
        end
    end
    else                            --WATCHER RESPOSNES IF KIMBERLY IS HAILED/SHOW INTERRUPTED
 	if Logan ~= nil then 
    FaceTarget(Logan,NPC)
     SetTarget(Logan,NPC)
   choice = math.random(1,2)   
        if choice == 1 then
        PlayFlavor(Logan, "","", "grumble", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Logan, "","", "tapfoot", 0, 0)            
        end
    end    
    if Duncan ~=nil then
     FaceTarget(Duncan,NPC)
     SetTarget(Duncan,NPC)
    choice = math.random(1,2)   
        if choice == 1 then
        PlayFlavor(Duncan, "","", "tapfoot", 0, 0)
        elseif choice == 2 then
        PlayFlavor(Duncan, "","", "sigh", 0, 0)            
        
        
    end
    end
    end
        AddTimer(NPC, MakeRandomInt(23000,25000), "Swooning")	
end