-- MADE BY B2B
-- Discord: https://discord.gg/gKYndhU78p

Config= Config or {}

Config.UseConfig= true -- mark false if you want to use only exports(less ms)

Config.PopUpLocations = {

                    --config example--
--just change the number to the next number in the list
--for example if the last one is 5 so you need to change the new one to 6
--||
--V
[1]= {
        --here insert the coords (vector3)
	--   ||
	--   V
        coords= vector3(-341.83, -767.5, 33.98),
        --here insert the distance that you want for the popup ui 
	--    ||
	--    V
        distance= 5,
        -- here just insert the header text
    --    ||
	--     V
        header= "Press [E] to open",
        -- here insert the text
	--   ||
	--    V
        text= "Garage 1",
},
    [2]= {
        coords= vector3(-384.33, 6059.32, 31.5),
        distance= 5,
        header= "Press [E] to open",
        text= "Garage 2",
    },
    [3]= {
        coords= vector3(45.85, -1749.19, 29.62),
        distance= 5,
        header= "Press [E] to open",
        text= "ToolShop",
    }
    

}