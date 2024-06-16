tv_channels = ["CBS", "UPN", "CW", "FOX", "NBC", "ESPN"]

p tv_channels.values_at(0) # ["CBS"]
p tv_channels.values_at(0, 4) # take 0 and 4 --> ["CBS", "NBC"]