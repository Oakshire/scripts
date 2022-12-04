--[[
    Script Name    : SpawnScripts/FermentedGrape/CaptainPegrinos.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.04 05:12:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

--[[You say, Hail, Captain Pegrinos

Captain Pegrinos says to you, Hey waddya want? Her performance is terrible and we`re gonna fix that...for good.`

You say to Captain Pegrinos, `Take it easy on her, it`s hard to perform!`

Captain Pegrinos says to you, `Now what should we be doing that? Her song was off-key, the lyrics were terrible, and I think one of me hearties ruptured an ear listenin` to her rot!`

There are three choices for the chat. My path:

You say to Captain Pegrinos, `How do you expect her to get better if you hurt her now?`

Captain Pegrinos says to you, `Ya weak-bellied scoundrel! We`re not expectin`her to get better, that`s rather the point!`

There are two choices:

You say to Captain Pegrinos, `But she`s just a poor, innocent bard!`

Captain Pegrinos says to you, Àrrr! Ya went and made em run! It`s just up to me and my mates here now! Prepare yerself, ya angered the wrong captain!`

At this point, the Captain and his 2 grouped mates attack. The other 4 are gone.
]]--