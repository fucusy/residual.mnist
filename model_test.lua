local mnist = require 'mnist'
local train = require 'train'
local model = require 'model'

local train = mnist.traindataset()
local Xt = train.data
local Yt = train.label
local test = mnist.testdataset()
local Xv = test.data
local Yv = test.label
Yt[Yt:eq(0)] = 10
Yv[Yv:eq(0)] = 10
local net,ct = model.residual(N)
local input = Xt[{{1,3}}]:double()
local output = net:forward(input)
print("input size:", input:size())
print("output size:", output:size())
