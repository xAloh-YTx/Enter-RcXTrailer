print("Script By: @AlohYT | Alohito")
on, off = 0, -1
md = {}
md[1], md[2], md[3] = off, off, off
md[0], md[-1] = {"ON",true}, {"OFF",false}

local N = "libpayback2.so"
local Z = gg.getRangesList(N)
N = #N == 0 and "split_config.arm64_v8a.apk" or N

function L(...) end

function Aloh(a,b,c,d)
local J = gg.getRangesList(a)
local X = #J ~= 0 and gg.setValues or L
J = #J == 0 and {{start=0}} or J
X({{address=J[1].start+b,flags=c,value=d}})
end

function exec(a,b,c,d)
md[a] = md[a] == off and on or off
Aloh(N,b,4,md[md[a]][2] and c or d)
gg.toast(md[md[a]][1])
end

function Cam()
exec(1,0x226dfc,1409287078,1409287073)
end

function Rc()
exec(2,0x1397d4,1426063014,1426063008)
end

function Trailer()
exec(3,0x1397ec,1426062822,1426062816)
end

repeat
if gg.isVisible() then
gg.setVisible(0<0)
local T
K = gg.choice({
	"Camara RC [" .. md[md[1]][1] .. "]";
	"Entrar RC [" .. md[md[2]][1] .. "]";
	"Entrar Trailer [" .. md[md[3]][1] .. "]";
	"Salir";
},0)
if K then
T = K == 1 and Cam or T
T = K == 2 and Rc or T
T = K == 3 and Trailer or T
T = K == 4 and os.exit or T
T()
end
end
until 0>0
