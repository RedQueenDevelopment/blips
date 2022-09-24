local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

   {title="Nightwing Garage", colour=1, id=446, x = 152.53, y = -3033.16, z = 6.64},
   {title="Pacific Bank", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287},
	 --{title="Hookah Lounge", colour=48, id=118, x = -424.22, y = -23.82, z = 46.23},
	 --{title="Cookies", colour=26, id=496, x = -941.39, y = -1180.91, z = 4.95},
	 {title="Triad Records", colour=1, id=614, x = -827.56, y = -697.82, z = 28.06},
  -- {title="Arcade", colour=43, id=84, x = -1648.761, y = -1084.628, z = 13.156},
   --{title="Bowling", colour=43, id=146, x = 753.75, y = -778.08, z = 26.34},
   {title="Pop's Diner", colour=53, id=608, x = 1576.90, y =  6451.104, z = 25.006},
   {title="Interiors for Real Estate", colour=134, id=357, x = -912.98, y = -1301.97, z = 112.64},
  -- {title="Carmeet", colour=58, id=121, x = 952.7775, y = -1700.9637, z = 29.7632},
    {title="Fishing Gear", colour=53, id=608, x = -805.28, y =  -1496.02, z = 1.6},

  }
      


Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


-- davispd 383.423 -1590.407 29.276
-- firedept1 1197.553 -1454.430 34.958
-- firedept2 217.2 -1636.09 30.44
-- harmony 1178.985 2653.985 37.862
-- haters -1115.524 -1439.953 5.107
-- hayes -1434.173 -441.539 35.624
-- hub -50.734 -1041.996 28.163
-- import 946.637 -990.316 39.228
-- lostmc 957.232 -143.250 74.496
-- lsc 716.214 -1088.703 22.365t/adm
-- mirror park house 1 983.289 -709.422 57.585
-- mirror park house 2 950.990 -654.549 57.951
-- mrpd 427.120 -979.559 30.716
-- pacific bank 223.313 208.295 105.521
-- paleto 24/7 158.520 6632.474 31.659
-- paleto liquor store -154.363 6329.432 31.565
-- paletopd -432.177 6019.605 31.490
-- pink cage motel 322.326 -218.825 54.087
-- lamesapd 825.3735 -1291.083, 29.2664
-- sandypd 1871.4530 3664.9644 33.6869

